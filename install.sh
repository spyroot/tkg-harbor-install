#!/bin/bash
#
# Script adjust all required file in TKG installation to work with a local harbor.
#
# it fixes tkg provider files and generate required patch set check gen-patch.sh
# it generate temlate.yaml file and inject that file to containered.
#
#  at first kind already running or if double install. N kinds running, it will stop and rm all.
#  as soon as first kind session is up, it injects a correct file for container
#  it busy waiting so if something is wrong with docker it will wait in loop.
#
#
# Mustafa mbayramo@vmware.com
#

repo=harbor.vmwarelab.edu
export TKG_CUSTOM_IMAGE_REPOSITORY=harbor.vmwarelab.edu/library
export REPO=harbor.vmwarelab.edu

KIND_VER="1.18.3"
TKG_PROVIDER_DIR="$HOME/.tkg/providers"

#login to harbor
docker login $repo
if [ $? -eq 0 ]
then
  echo "Successfully logged to $repo"
else
  echo "Check your harbor session." >&2
  exit 1
fi

# create .tkg/provider if needed
if [ ! -d "${TKG_PROVIDER_DIR}" ]; then
  echo "tkg provider dir $TKG_PROVIDER_DIR is empty. Rebuilding."
  tkg get mc 
  if [ ! -d "${TKG_PROVIDER_DIR}" ]; then
        echo "failed re-rebuilding"
        exit 1
  fi
fi

echo "Generating patch for dev and prod files."
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
bash ${__dir}/gen-patch.sh

patch --verbose --dry-run --ignore-whitespace --fuzz 3 $HOME/.tkg/providers/infrastructure-vsphere/v0.6.5/cluster-template-dev.yaml < patch_dev
patch --verbose --dry-run --ignore-whitespace --fuzz 3 $HOME/.tkg/providers/infrastructure-vsphere/v0.6.5/cluster-template-prod.yaml < patch_prod

# get container sid
sid=$(docker ps| grep kind| grep $KIND_VER | cut -d' ' -f1)

# Get all kidn running
l=$(docker ps | grep kind | grep $KIND_VER | cut -d' ' -f1-2 --output-delimiter=',' | xargs)
#read -r -a kinds <<< "${l}"
IFS=',' read -ra kinds <<< "$l"

# if more then one kill it
if [ ${#kinds[@]} -gt 1 ]
then
for i in "${kinds[@]}"
   do echo "stopping $i"
   docker stop $i
 done
 rm progerss.log
fi

# if just one instance
if [ ${#kinds[@]} -eq 1 ]
then
   echo "Kind already running"
fi

# re-check 
sid=$(docker ps|grep kind|grep 1.18.3|cut -d' ' -f1)

# if one is running let it finish or not
FILE=progress.log
####
if test -f "$FILE"; then
  if [ -z "$sid" ]; then
      echo "looks like no kind instance is running."
      rm progress.log
      tkg init --infrastructure=vsphere --plan prod -v 100 > progress.log &
    else     
        echo "Deployement in progress."
    fi
else
  echo "Creating a new cluster."
  tkg init --infrastructure=vsphere --plan prod -v 100 > progress.log &
fi

# wait for kind cluster
while [ "`docker inspect --format='{{ .State.Running}}' "$sid"`" != "true" ]
do
  sid=$(docker ps | grep kind | grep $KIND_VER | cut -d' ' -f1)
  status="`docker inspect --format='{{ .State.Running}}' "$sid"`"
  echo "waiting kind $sid kind status $status"
  sleep 2
done

# kind is up , adjust config
echo "container $sid up"

# kind is up , adjust config
sid=$(docker ps| grep kind | grep $KIND_VER | cut -d' ' -f1)
echo "Adjusting /etc/containerd/config.toml file"
docker exec -i "$sid" /bin/bash -c 'cat > /etc/containerd/config.toml; systemctl restart containerd' < ${__dir}/template.yaml
rm progress.log
