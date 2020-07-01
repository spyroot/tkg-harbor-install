#!/bin/bash
#
# Ddelete cluster,  stop all kind instance and remove all
#
# Mustafa mbayramo@vmware.com
#

KIND_VER="1.18.3"
TEST_CLUSTER_NAME="cnfs"
PATH_TO_FIX="/root/tkg-install/template.yaml"

# delete cluster
tkg delete cluster "$TEST_CLUSTER_NAME" --yes -v 100 > delete.log

# delete mgmt ccluster
tkg delete management-cluster  "$(tkg get mc -o yaml | grep name | awk '{$0=$3}1')" --yes -v 100 >> delete.log &

sid=$(docker ps | grep kind | grep $KIND_VER | cut -d' ' -f1)
# wait for kind ccluster
while [ "`docker inspect --format='{{ .State.Running}}' "$sid"`" != "true" ];
do
  sid=$(docker ps| grep kind | grep $KIND_VER | cut -d' ' -f1)
  echo "waiting kind $sid"  sleep 2;
done

# kind is up , adjust config
echo "container $sid up"

# adjust
docker exec -i "$sid" /bin/bash -c 'cat > /etc/containerd/config.toml; systemctl restart containerd' < $PATH_TO_FIX 

l=$(docker ps | grep kind | grep 1.18.3 | cut -d' ' -f1-2 --output-delimiter=',' | xargs)
#read -r -a kinds <<< "${l}"
IFS=',' read -ra kinds <<< "$l"

for i in "${kinds[@]}"
do
   echo "stopping $i"
   docker stop "$i"
   docker rm -v "$i" -f
done

#Delete configuration files 
#rm -rf ~/.tkg
rm -rf ~/.kube


