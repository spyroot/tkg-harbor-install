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
# Script generate patch files for provider vsphere.
# note generally you can add whatever you need for post patch process.
#
# Mustafa mbayramo@vmware.com

# defaults install.sh should pass correct

if [[ -z "${REPO}" ]]; then
  REPO="harbor.vmwarelab.edu"
else
  REPO="${REPO}"
fi
if [[ -z "${DNS}" ]]; then
  DNS="172.16.254.201"
else
  DNS="${DNS}"
fi
if [[ -z "${DOMAIN}" ]]; then
  DOMAIN="vmwarelab.edu"
else
  DOMAIN="${DOMAIN}"
fi

echo "
--- cluster-template-dev.yaml	2020-07-01 22:13:58.255908945 +0400
+++ ~/.tkg/providers/infrastructure-vsphere/v0.6.5/cluster-template-dev.yaml	2020-07-01 21:59:11.064677144 +0400
@@ -194,6 +194,28 @@
     - echo \"127.0.0.1   localhost\" >>/etc/hosts
     - echo \"127.0.0.1   {{ ds.meta_data.hostname }}\" >>/etc/hosts
     - echo \"{{ ds.meta_data.hostname }}\" >/etc/hostname
+    - echo \"nameserver $DNS\" > /usr/lib/systemd/resolv.conf
+    - echo \"domain $DOMAIN\" >> /usr/lib/systemd/resolv.conf
+    - rm /etc/resolv.conf
+    - ln -s /usr/lib/systemd/resolv.conf /etc/resolv.conf
+    - mkdir -p /etc/containerd
+    - echo \"\" > /etc/containerd/config.toml
+    - sed -i '1 i\# Use config version 2 to enable new configuration fields.' /etc/containerd/config.toml
+    - sed -i '2 i\# Config file is parsed as version 1 by default.' /etc/containerd/config.toml
+    - sed -i '3 i\version = 2' /etc/containerd/config.toml
+    - sed -i '4 i\ ' /etc/containerd/config.toml
+    - sed -i '5 i\[plugins]' /etc/containerd/config.toml
+    - sed -i '6 i\  [plugins.\"io.containerd.grpc.v1.cri\"]' /etc/containerd/config.toml
+    - sed -i '7 i\    sandbox_image = \"registry.tkg.vmware.run/pause:3.2\"' /etc/containerd/config.toml
+    - sed -i '8 i\    [plugins.\"io.containerd.grpc.v1.cri\".registry]' /etc/containerd/config.toml
+    - sed -i '9 i\      [plugins.\"io.containerd.grpc.v1.cri\".registry.mirrors]' /etc/containerd/config.toml
+    - sed -i '10 i\        [plugins.\"io.containerd.grpc.v1.cri\".registry.mirrors.\"$REPO\"]' /etc/containerd/config.toml
+    - sed -i '11 i\          endpoint = [\"https://$REPO\"]' /etc/containerd/config.toml
+    - sed -i '12 i\      [plugins.\"io.containerd.grpc.v1.cri\".registry.configs]' /etc/containerd/config.toml
+    - sed -i '13 i\        [plugins.\"io.containerd.grpc.v1.cri\".registry.configs.\"$REPO\"]' /etc/containerd/config.toml
+    - sed -i '14 i\          [plugins.\"io.containerd.grpc.v1.cri\".registry.configs.\"$REPO\".tls]' /etc/containerd/config.toml
+    - sed -i '15 i\            insecure_skip_verify = true' /etc/containerd/config.toml
+    - systemctl restart containerd
     users:
     - name: capv
       sshAuthorizedKeys:
@@ -224,6 +246,28 @@
       - echo \"127.0.0.1   localhost\" >>/etc/hosts
       - echo \"127.0.0.1   {{ ds.meta_data.hostname }}\" >>/etc/hosts
       - echo \"{{ ds.meta_data.hostname }}\" >/etc/hostname
+      - echo \"nameserver $DNS\" > /usr/lib/systemd/resolv.conf
+      - echo \"domain $DOMAIN\" >> /usr/lib/systemd/resolv.conf
+      - rm /etc/resolv.conf
+      - ln -s /usr/lib/systemd/resolv.conf /etc/resolv.conf
+      - mkdir -p /etc/containerd
+      - echo \"\" > /etc/containerd/config.toml
+      - sed -i '1 i\# Use config version 2 to enable new configuration fields.' /etc/containerd/config.toml
+      - sed -i '2 i\# Config file is parsed as version 1 by default.' /etc/containerd/config.toml
+      - sed -i '3 i\version = 2' /etc/containerd/config.toml
+      - sed -i '4 i\ ' /etc/containerd/config.toml
+      - sed -i '5 i\[plugins]' /etc/containerd/config.toml
+      - sed -i '6 i\  [plugins.\"io.containerd.grpc.v1.cri\"]' /etc/containerd/config.toml
+      - sed -i '7 i\    sandbox_image = \"registry.tkg.vmware.run/pause:3.2\"' /etc/containerd/config.toml
+      - sed -i '8 i\    [plugins.\"io.containerd.grpc.v1.cri\".registry]' /etc/containerd/config.toml
+      - sed -i '9 i\      [plugins.\"io.containerd.grpc.v1.cri\".registry.mirrors]' /etc/containerd/config.toml
+      - sed -i '10 i\        [plugins.\"io.containerd.grpc.v1.cri\".registry.mirrors.\"$REPO\"]' /etc/containerd/config.toml
+      - sed -i '11 i\          endpoint = [\"https://$REPO\"]' /etc/containerd/config.toml
+      - sed -i '12 i\      [plugins.\"io.containerd.grpc.v1.cri\".registry.configs]' /etc/containerd/config.toml
+      - sed -i '13 i\        [plugins.\"io.containerd.grpc.v1.cri\".registry.configs.\"$REPO\"]' /etc/containerd/config.toml
+      - sed -i '14 i\          [plugins.\"io.containerd.grpc.v1.cri\".registry.configs.\"$REPO\".tls]' /etc/containerd/config.toml
+      - sed -i '15 i\            insecure_skip_verify = true' /etc/containerd/config.toml
+      - systemctl restart containerd
       users:
       - name: capv
         sshAuthorizedKeys:" > patch_dev

echo "--- /root/.tkg/providers/infrastructure-vsphere/v0.6.5/cluster-template-prod.yaml 2020-07-01 22:13:58.255908945 +0400
+++ /root/tkg.backup01/providers/infrastructure-vsphere/v0.6.5/cluster-template-prod.yaml 2020-07-01 21:59:11.064677144 +0400
@@ -194,6 +194,28 @@
     - echo \"127.0.0.1   localhost\" >>/etc/hosts
     - echo \"127.0.0.1   {{ ds.meta_data.hostname }}\" >>/etc/hosts
     - echo \"{{ ds.meta_data.hostname }}\" >/etc/hostname
+    - echo \"nameserver $DNS\" > /usr/lib/systemd/resolv.conf
+    - echo \"domain $DOMAIN\" >> /usr/lib/systemd/resolv.conf
+    - rm /etc/resolv.conf
+    - ln -s /usr/lib/systemd/resolv.conf /etc/resolv.conf
+    - mkdir -p /etc/containerd
+    - echo \"\" > /etc/containerd/config.toml
+    - sed -i '1 i\# Use config version 2 to enable new configuration fields.' /etc/containerd/config.toml
+    - sed -i '2 i\# Config file is parsed as version 1 by default.' /etc/containerd/config.toml
+    - sed -i '3 i\version = 2' /etc/containerd/config.toml
+    - sed -i '4 i\ ' /etc/containerd/config.toml
+    - sed -i '5 i\[plugins]' /etc/containerd/config.toml
+    - sed -i '6 i\  [plugins.\"io.containerd.grpc.v1.cri\"]' /etc/containerd/config.toml
+    - sed -i '7 i\    sandbox_image = \"registry.tkg.vmware.run/pause:3.2\"' /etc/containerd/config.toml
+    - sed -i '8 i\    [plugins.\"io.containerd.grpc.v1.cri\".registry]' /etc/containerd/config.toml
+    - sed -i '9 i\      [plugins.\"io.containerd.grpc.v1.cri\".registry.mirrors]' /etc/containerd/config.toml
+    - sed -i '10 i\        [plugins.\"io.containerd.grpc.v1.cri\".registry.mirrors.\"$REPO\"]' /etc/containerd/config.toml
+    - sed -i '11 i\          endpoint = [\"https://$REPO\"]' /etc/containerd/config.toml
+    - sed -i '12 i\      [plugins.\"io.containerd.grpc.v1.cri\".registry.configs]' /etc/containerd/config.toml
+    - sed -i '13 i\        [plugins.\"io.containerd.grpc.v1.cri\".registry.configs.\"$REPO\"]' /etc/containerd/config.toml
+    - sed -i '14 i\          [plugins.\"io.containerd.grpc.v1.cri\".registry.configs.\"$REPO\".tls]' /etc/containerd/config.toml
+    - sed -i '15 i\            insecure_skip_verify = true' /etc/containerd/config.toml
+    - systemctl restart containerd
     users:
     - name: capv
       sshAuthorizedKeys:
@@ -224,6 +246,28 @@
       - echo \"127.0.0.1   localhost\" >>/etc/hosts
       - echo \"127.0.0.1   {{ ds.meta_data.hostname }}\" >>/etc/hosts
       - echo \"{{ ds.meta_data.hostname }}\" >/etc/hostname
+      - echo \"nameserver $DNS\" > /usr/lib/systemd/resolv.conf
+      - echo \"domain $DOMAIN\" >> /usr/lib/systemd/resolv.conf
+      - rm /etc/resolv.conf
+      - ln -s /usr/lib/systemd/resolv.conf /etc/resolv.conf
+      - mkdir -p /etc/containerd
+      - echo \"\" > /etc/containerd/config.toml
+      - sed -i '1 i\# Use config version 2 to enable new configuration fields.' /etc/containerd/config.toml
+      - sed -i '2 i\# Config file is parsed as version 1 by default.' /etc/containerd/config.toml
+      - sed -i '3 i\version = 2' /etc/containerd/config.toml
+      - sed -i '4 i\ ' /etc/containerd/config.toml
+      - sed -i '5 i\[plugins]' /etc/containerd/config.toml
+      - sed -i '6 i\  [plugins.\"io.containerd.grpc.v1.cri\"]' /etc/containerd/config.toml
+      - sed -i '7 i\    sandbox_image = \"registry.tkg.vmware.run/pause:3.2\"' /etc/containerd/config.toml
+      - sed -i '8 i\    [plugins.\"io.containerd.grpc.v1.cri\".registry]' /etc/containerd/config.toml
+      - sed -i '9 i\      [plugins.\"io.containerd.grpc.v1.cri\".registry.mirrors]' /etc/containerd/config.toml
+      - sed -i '10 i\        [plugins.\"io.containerd.grpc.v1.cri\".registry.mirrors.\"$REPO\"]' /etc/containerd/config.toml
+      - sed -i '11 i\          endpoint = [\"https://$REPO\"]' /etc/containerd/config.toml
+      - sed -i '12 i\      [plugins.\"io.containerd.grpc.v1.cri\".registry.configs]' /etc/containerd/config.toml
+      - sed -i '13 i\        [plugins.\"io.containerd.grpc.v1.cri\".registry.configs.\"$REPO\"]' /etc/containerd/config.toml
+      - sed -i '14 i\          [plugins.\"io.containerd.grpc.v1.cri\".registry.configs.\"$REPO\".tls]' /etc/containerd/config.toml
+      - sed -i '15 i\            insecure_skip_verify = true' /etc/containerd/config.toml
+      - systemctl restart containerd
       users:
       - name: capv
         sshAuthorizedKeys:" > patch_prod
