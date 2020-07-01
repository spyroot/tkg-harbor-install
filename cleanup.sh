#!/bin/bash
# Copyright 2020 The TKG Contributors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Ddelete cluster,  stop all kind instance and remove all
#
# Mustafa mbayramo@vmware.com
#

KIND_VER="1.18.3"
TEST_CLUSTER_NAME="cnfs"
PATH_TO_FIX="/root/tkg-install/template.yaml"

rm -rf delete.log

# delete cluster
tkg delete cluster "$TEST_CLUSTER_NAME" --yes -v 100 > delete.log

# delete mgmt cluster
tkg delete management-cluster  "$(tkg get mc -o yaml | grep name | awk '{$0=$3}1')" --yes -v 100 >> delete.log &

sid=$(docker ps | grep kind | grep $KIND_VER | cut -d' ' -f1)
# wait for kind ccluster
wait_count=1
while [ "`docker inspect --format='{{ .State.Running}}' "$sid"`" != "true" ];
do
  sid=$(docker ps| grep kind | grep $KIND_VER | cut -d' ' -f1)
  echo "waiting for kind $sid"  
  sleep 2
  wait_count=$((wait_count + 1))
  if [[ $wait_count -eq 64 ]]; then
    break
  fi
done

# kind is up , adjust config
echo "container $sid up"

# adjust contaiinerd files
docker exec -i "$sid" /bin/bash -c 'cat > /etc/containerd/config.toml; systemctl restart containerd' < $PATH_TO_FIX 

#get list of all kinds runnung
l=$(docker ps | grep kind | grep $KIND_VER | cut -d' ' -f1-2 --output-delimiter=',' | xargs)
#read -r -a kinds <<< "${l}"
IFS=',' read -ra kinds <<< "$l"

for i in "${kinds[@]}"
do
   echo "stopping $i"
   docker stop "$i"
   docker rm -v "$i" -f
done

#Delete configuration files 
#rm -rf ~/.tk
rm -rf ~/.kube


