#!/bin/bash
#
# Script generate patch files for provider vsphere.
# note generally you can add whatever you need for post patch process.
#
# Mustafa mbayramo@vmware.com
#

DNS="192.16.254.201"
REPO="harbor.vmwarelab.edu"
DOMAIN="vmwarelab.edu"

echo "
--- cluster-template-dev.yaml	2020-07-01 22:13:58.255908945 +0400
+++ ~/.tkg/providers/infrastructure-vsphere/v0.6.5/cluster-template-dev.yaml	2020-07-01 21:59:11.064677144 +0400
@@ -194,6 +194,28 @@
     - echo "127.0.0.1   localhost" >>/etc/hosts
     - echo "127.0.0.1   {{ ds.meta_data.hostname }}" >>/etc/hosts
     - echo "{{ ds.meta_data.hostname }}" >/etc/hostname
+    - echo "nameserver $DNS" > /usr/lib/systemd/resolv.conf
+    - echo "domain $DOMAIN" >> /usr/lib/systemd/resolv.conf
+    - rm /etc/resolv.conf
+    - ln -s /usr/lib/systemd/resolv.conf /etc/resolv.conf
+    - mkdir -p /etc/containerd
+    - echo "" > /etc/containerd/config.toml
+    - sed -i '1 i\# Use config version 2 to enable new configuration fields.' /etc/containerd/config.toml
+    - sed -i '2 i\# Config file is parsed as version 1 by default.' /etc/containerd/config.toml
+    - sed -i '3 i\version = 2' /etc/containerd/config.toml
+    - sed -i '4 i\ ' /etc/containerd/config.toml
+    - sed -i '5 i\[plugins]' /etc/containerd/config.toml
+    - sed -i '6 i\  [plugins."io.containerd.grpc.v1.cri"]' /etc/containerd/config.toml
+    - sed -i '7 i\    sandbox_image = "registry.tkg.vmware.run/pause:3.2"' /etc/containerd/config.toml
+    - sed -i '8 i\    [plugins."io.containerd.grpc.v1.cri".registry]' /etc/containerd/config.toml
+    - sed -i '9 i\      [plugins."io.containerd.grpc.v1.cri".registry.mirrors]' /etc/containerd/config.toml
+    - sed -i '10 i\        [plugins."io.containerd.grpc.v1.cri".registry.mirrors."$REPO"]' /etc/containerd/config.toml
+    - sed -i '11 i\          endpoint = ["https://$REPO"]' /etc/containerd/config.toml
+    - sed -i '12 i\      [plugins."io.containerd.grpc.v1.cri".registry.configs]' /etc/containerd/config.toml
+    - sed -i '13 i\        [plugins."io.containerd.grpc.v1.cri".registry.configs."$REPO"]' /etc/containerd/config.toml
+    - sed -i '14 i\          [plugins."io.containerd.grpc.v1.cri".registry.configs."$REPO".tls]' /etc/containerd/config.toml
+    - sed -i '15 i\            insecure_skip_verify = true' /etc/containerd/config.toml
+    - systemctl restart containerd
     users:
     - name: capv
       sshAuthorizedKeys:
@@ -224,6 +246,28 @@
       - echo "127.0.0.1   localhost" >>/etc/hosts
       - echo "127.0.0.1   {{ ds.meta_data.hostname }}" >>/etc/hosts
       - echo "{{ ds.meta_data.hostname }}" >/etc/hostname
+      - echo "nameserver $DNS" > /usr/lib/systemd/resolv.conf
+      - echo "$DOMAIN" >> /usr/lib/systemd/resolv.conf
+      - rm /etc/resolv.conf
+      - ln -s /usr/lib/systemd/resolv.conf /etc/resolv.conf
+      - mkdir -p /etc/containerd
+      - echo "" > /etc/containerd/config.toml
+      - sed -i '1 i\# Use config version 2 to enable new configuration fields.' /etc/containerd/config.toml
+      - sed -i '2 i\# Config file is parsed as version 1 by default.' /etc/containerd/config.toml
+      - sed -i '3 i\version = 2' /etc/containerd/config.toml
+      - sed -i '4 i\ ' /etc/containerd/config.toml
+      - sed -i '5 i\[plugins]' /etc/containerd/config.toml
+      - sed -i '6 i\  [plugins."io.containerd.grpc.v1.cri"]' /etc/containerd/config.toml
+      - sed -i '7 i\    sandbox_image = "registry.tkg.vmware.run/pause:3.2"' /etc/containerd/config.toml
+      - sed -i '8 i\    [plugins."io.containerd.grpc.v1.cri".registry]' /etc/containerd/config.toml
+      - sed -i '9 i\      [plugins."io.containerd.grpc.v1.cri".registry.mirrors]' /etc/containerd/config.toml
+      - sed -i '10 i\        [plugins."io.containerd.grpc.v1.cri".registry.mirrors."$REPO"]' /etc/containerd/config.toml
+      - sed -i '11 i\          endpoint = ["https://$REPO"]' /etc/containerd/config.toml
+      - sed -i '12 i\      [plugins."io.containerd.grpc.v1.cri".registry.configs]' /etc/containerd/config.toml
+      - sed -i '13 i\        [plugins."io.containerd.grpc.v1.cri".registry.configs."$REPO"]' /etc/containerd/config.toml
+      - sed -i '14 i\          [plugins."io.containerd.grpc.v1.cri".registry.configs."$REPO".tls]' /etc/containerd/config.toml
+      - sed -i '15 i\            insecure_skip_verify = true' /etc/containerd/config.toml
+      - systemctl restart containerd
       users:
       - name: capv
         sshAuthorizedKeys:" > patch_dev
echo "--- /root/.tkg/providers/infrastructure-vsphere/v0.6.5/cluster-template-prod.yaml 2020-07-01 22:13:58.255908945 +0400
+++ /root/tkg.backup01/providers/infrastructure-vsphere/v0.6.5/cluster-template-prod.yaml 2020-07-01 21:59:11.064677144 +0400
@@ -194,6 +194,28 @@
     - echo "127.0.0.1   localhost" >>/etc/hosts
     - echo "127.0.0.1   {{ ds.meta_data.hostname }}" >>/etc/hosts
     - echo "{{ ds.meta_data.hostname }}" >/etc/hostname
+    - echo "nameserver $DNS" > /usr/lib/systemd/resolv.conf
+    - echo "domain $DOMAIN" >> /usr/lib/systemd/resolv.conf
+    - rm /etc/resolv.conf
+    - ln -s /usr/lib/systemd/resolv.conf /etc/resolv.conf
+    - mkdir -p /etc/containerd
+    - echo "" > /etc/containerd/config.toml
+    - sed -i '1 i\# Use config version 2 to enable new configuration fields.' /etc/containerd/config.toml
+    - sed -i '2 i\# Config file is parsed as version 1 by default.' /etc/containerd/config.toml
+    - sed -i '3 i\version = 2' /etc/containerd/config.toml
+    - sed -i '4 i\ ' /etc/containerd/config.toml
+    - sed -i '5 i\[plugins]' /etc/containerd/config.toml
+    - sed -i '6 i\  [plugins."io.containerd.grpc.v1.cri"]' /etc/containerd/config.toml
+    - sed -i '7 i\    sandbox_image = "registry.tkg.vmware.run/pause:3.2"' /etc/containerd/config.toml
+    - sed -i '8 i\    [plugins."io.containerd.grpc.v1.cri".registry]' /etc/containerd/config.toml
+    - sed -i '9 i\      [plugins."io.containerd.grpc.v1.cri".registry.mirrors]' /etc/containerd/config.toml
+    - sed -i '10 i\        [plugins."io.containerd.grpc.v1.cri".registry.mirrors."$REPO"]' /etc/containerd/config.toml
+    - sed -i '11 i\          endpoint = ["https://$REPO"]' /etc/containerd/config.toml
+    - sed -i '12 i\      [plugins."io.containerd.grpc.v1.cri".registry.configs]' /etc/containerd/config.toml
+    - sed -i '13 i\        [plugins."io.containerd.grpc.v1.cri".registry.configs."$REPO"]' /etc/containerd/config.toml
+    - sed -i '14 i\          [plugins."io.containerd.grpc.v1.cri".registry.configs."$REPO".tls]' /etc/containerd/config.toml
+    - sed -i '15 i\            insecure_skip_verify = true' /etc/containerd/config.toml
+    - systemctl restart containerd
     users:
     - name: capv
       sshAuthorizedKeys:
@@ -224,6 +246,28 @@
       - echo "127.0.0.1   localhost" >>/etc/hosts
       - echo "127.0.0.1   {{ ds.meta_data.hostname }}" >>/etc/hosts
       - echo "{{ ds.meta_data.hostname }}" >/etc/hostname
+      - echo "nameserver $DNS" > /usr/lib/systemd/resolv.conf
+      - echo "domain $DOMAIN" >> /usr/lib/systemd/resolv.conf
+      - rm /etc/resolv.conf
+      - ln -s /usr/lib/systemd/resolv.conf /etc/resolv.conf
+      - mkdir -p /etc/containerd
+      - echo "" > /etc/containerd/config.toml
+      - sed -i '1 i\# Use config version 2 to enable new configuration fields.' /etc/containerd/config.toml
+      - sed -i '2 i\# Config file is parsed as version 1 by default.' /etc/containerd/config.toml
+      - sed -i '3 i\version = 2' /etc/containerd/config.toml
+      - sed -i '4 i\ ' /etc/containerd/config.toml
+      - sed -i '5 i\[plugins]' /etc/containerd/config.toml
+      - sed -i '6 i\  [plugins."io.containerd.grpc.v1.cri"]' /etc/containerd/config.toml
+      - sed -i '7 i\    sandbox_image = "registry.tkg.vmware.run/pause:3.2"' /etc/containerd/config.toml
+      - sed -i '8 i\    [plugins."io.containerd.grpc.v1.cri".registry]' /etc/containerd/config.toml
+      - sed -i '9 i\      [plugins."io.containerd.grpc.v1.cri".registry.mirrors]' /etc/containerd/config.toml
+      - sed -i '10 i\        [plugins."io.containerd.grpc.v1.cri".registry.mirrors."$REPO"]' /etc/containerd/config.toml
+      - sed -i '11 i\          endpoint = ["https://$REPO"]' /etc/containerd/config.toml
+      - sed -i '12 i\      [plugins."io.containerd.grpc.v1.cri".registry.configs]' /etc/containerd/config.toml
+      - sed -i '13 i\        [plugins."io.containerd.grpc.v1.cri".registry.configs."$REPO"]' /etc/containerd/config.toml
+      - sed -i '14 i\          [plugins."io.containerd.grpc.v1.cri".registry.configs."$REPO".tls]' /etc/containerd/config.toml
+      - sed -i '15 i\            insecure_skip_verify = true' /etc/containerd/config.toml
+      - systemctl restart containerd
       users:
       - name: capv
         sshAuthorizedKeys:" > patch_prod

