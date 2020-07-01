export REGISTRY="harbor.vmwarelab.edu"
export NAMESERVER="172.16.254.201"
export DOMAIN="vmwarelab.edu"

cat > /tmp/harbor.sh <<EOF
echo "nameserver $NAMESERVER" > /usr/lib/systemd/resolv.conf
echo "domain $DOMAIN" >> /usr/lib/systemd/resolv.conf
rm /etc/resolv.conf
ln -s /usr/lib/systemd/resolv.conf /etc/resolv.conf
mkdir -p /etc/containerd
echo "" > /etc/containerd/config.toml
sed -i '1 i\# Use config version 2 to enable new configuration fields.' /etc/containerd/config.toml
sed -i '2 i\# Config file is parsed as version 1 by default.' /etc/containerd/config.toml
sed -i '3 i\version = 2' /etc/containerd/config.toml
sed -i '4 i\ ' /etc/containerd/config.toml
sed -i '5 i\[plugins]' /etc/containerd/config.toml
sed -i '6 i\  [plugins."io.containerd.grpc.v1.cri"]' /etc/containerd/config.toml
sed -i '7 i\    sandbox_image = "registry.tkg.vmware.run/pause:3.2"' /etc/containerd/config.toml
sed -i '8 i\    [plugins."io.containerd.grpc.v1.cri".registry]' /etc/containerd/config.toml
sed -i '9 i\      [plugins."io.containerd.grpc.v1.cri".registry.mirrors]' /etc/containerd/config.toml
sed -i '10 i\        [plugins."io.containerd.grpc.v1.cri".registry.mirrors."$REGISTRY"]' /etc/containerd/config.toml
sed -i '11 i\          endpoint = ["https://$REGISTRY"]' /etc/containerd/config.toml
sed -i '12 i\      [plugins."io.containerd.grpc.v1.cri".registry.configs]' /etc/containerd/config.toml
sed -i '13 i\        [plugins."io.containerd.grpc.v1.cri".registry.configs."$REGISTRY"]' /etc/containerd/config.toml
sed -i '14 i\          [plugins."io.containerd.grpc.v1.cri".registry.configs."$REGISTRY".tls]' /etc/containerd/config.toml
sed -i '15 i\            insecure_skip_verify = true' /etc/containerd/config.toml
systemctl restart containerd
EOF
 
awk '{print "    -", $0}' /tmp/harbor.sh > /tmp/harbor1.yaml
awk '{print "      -", $0}' /tmp/harbor.sh > /tmp/harbor2.yaml
sed -i '197 e cat /tmp/harbor1.yaml\n' ~/.tkg/providers/infrastructure-vsphere/v0.6.5/cluster-template-dev.yaml
sed -i '249 e cat /tmp/harbor2.yaml\n' ~/.tkg/providers/infrastructure-vsphere/v0.6.5/cluster-template-dev.yaml
sed -i '197 e cat /tmp/harbor1.yaml\n' ~/.tkg/providers/infrastructure-vsphere/v0.6.5/cluster-template-prod.yaml
sed -i '249 e cat /tmp/harbor2.yaml\n' ~/.tkg/providers/infrastructure-vsphere/v0.6.5/cluster-template-prod.yaml 
rm /tmp/harbor1.yaml /tmp/harbor2.yaml /tmp/harbor.sh
