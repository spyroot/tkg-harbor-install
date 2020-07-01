docker pull bitnami/wordpress:latest
docker tag bitnami/wordpress:latest harbor.vmwarelab.edu/library/bitnami/wordpress:latest
docker push harbor.vmwarelab.edu/library/bitnami/wordpress:latest

docker pull gcr.io/google-samples/node-hello:1.0
docker tag gcr.io/google-samples/node-hello:1.0 harbor.vmwarelab.edu/library/gcr.io/google-samples/node-hello:1.0
docker push harbor.vmwarelab.edu/library/gcr.io/google-samples/node-hello:1.0

docker pull registry.tkg.vmware.run/cluster-api/kubeadm-bootstrap-controller:v0.3.5_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/kubeadm-bootstrap-controller:v0.3.5_vmware.1 harbor.vmwarelab.edu/library/cluster-api/kubeadm-bootstrap-controller:v0.3.5_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/kubeadm-bootstrap-controller:v0.3.5_vmware.1

docker pull registry.tkg.vmware.run/calico-all/cni-plugin:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/cni-plugin:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/cni-plugin:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/cni-plugin:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/calico-all/kube-controllers:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/kube-controllers:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/kube-controllers:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/kube-controllers:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/calico-all/node:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/node:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/node:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/node:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/calico-all/pod2daemon:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/pod2daemon:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/pod2daemon:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/pod2daemon:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-aws-controller:v0.5.3_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-aws-controller:v0.5.3_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-aws-controller:v0.5.3_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-aws-controller:v0.5.3_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-controller:v0.3.5_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-controller:v0.3.5_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-controller:v0.3.5_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-controller:v0.3.5_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-vsphere-controller:v0.6.4_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-vsphere-controller:v0.6.4_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-vsphere-controller:v0.6.4_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-vsphere-controller:v0.6.4_vmware.1

docker pull registry.tkg.vmware.run/ccm/manager:v1.1.0_vmware.2
docker tag registry.tkg.vmware.run/ccm/manager:v1.1.0_vmware.2 harbor.vmwarelab.edu/library/ccm/manager:v1.1.0_vmware.2
docker push harbor.vmwarelab.edu/library/ccm/manager:v1.1.0_vmware.2

docker pull registry.tkg.vmware.run/cert-manager/cert-manager-controller:v0.11.0_vmware.1
docker tag registry.tkg.vmware.run/cert-manager/cert-manager-controller:v0.11.0_vmware.1 harbor.vmwarelab.edu/library/cert-manager/cert-manager-controller:v0.11.0_vmware.1
docker push harbor.vmwarelab.edu/library/cert-manager/cert-manager-controller:v0.11.0_vmware.1

docker pull registry.tkg.vmware.run/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1
docker tag registry.tkg.vmware.run/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1 harbor.vmwarelab.edu/library/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1
docker push harbor.vmwarelab.edu/library/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1

docker pull registry.tkg.vmware.run/cert-manager/cert-manager-webhook:v0.11.0_vmware.1
docker tag registry.tkg.vmware.run/cert-manager/cert-manager-webhook:v0.11.0_vmware.1 harbor.vmwarelab.edu/library/cert-manager/cert-manager-webhook:v0.11.0_vmware.1
docker push harbor.vmwarelab.edu/library/cert-manager/cert-manager-webhook:v0.11.0_vmware.1

docker pull registry.tkg.vmware.run/contour:v1.2.1_vmware.1
docker tag registry.tkg.vmware.run/contour:v1.2.1_vmware.1 harbor.vmwarelab.edu/library/contour:v1.2.1_vmware.1
docker push harbor.vmwarelab.edu/library/contour:v1.2.1_vmware.1

docker pull registry.tkg.vmware.run/coredns:v1.6.7_vmware.1
docker tag registry.tkg.vmware.run/coredns:v1.6.7_vmware.1 harbor.vmwarelab.edu/library/coredns:v1.6.7_vmware.1
docker push harbor.vmwarelab.edu/library/coredns:v1.6.7_vmware.1

docker pull registry.tkg.vmware.run/csi/csi-attacher:v1.1.1_vmware.7
docker tag registry.tkg.vmware.run/csi/csi-attacher:v1.1.1_vmware.7 harbor.vmwarelab.edu/library/csi/csi-attacher:v1.1.1_vmware.7
docker push harbor.vmwarelab.edu/library/csi/csi-attacher:v1.1.1_vmware.7

docker pull registry.tkg.vmware.run/csi/vsphere-block-csi-driver:v1.0.2_vmware.1
docker tag registry.tkg.vmware.run/csi/vsphere-block-csi-driver:v1.0.2_vmware.1 harbor.vmwarelab.edu/library/csi/vsphere-block-csi-driver:v1.0.2_vmware.1
docker push harbor.vmwarelab.edu/library/csi/vsphere-block-csi-driver:v1.0.2_vmware.1

docker pull registry.tkg.vmware.run/csi/csi-livenessprobe:v1.1.0_vmware.7
docker tag registry.tkg.vmware.run/csi/csi-livenessprobe:v1.1.0_vmware.7 harbor.vmwarelab.edu/library/csi/csi-livenessprobe:v1.1.0_vmware.7
docker push harbor.vmwarelab.edu/library/csi/csi-livenessprobe:v1.1.0_vmware.7

docker pull registry.tkg.vmware.run/csi/volume-metadata-syncer:v1.0.2_vmware.1
docker tag registry.tkg.vmware.run/csi/volume-metadata-syncer:v1.0.2_vmware.1 harbor.vmwarelab.edu/library/csi/volume-metadata-syncer:v1.0.2_vmware.1
docker push harbor.vmwarelab.edu/library/csi/volume-metadata-syncer:v1.0.2_vmware.1

docker pull registry.tkg.vmware.run/csi/csi-node-driver-registrar:v1.1.0_vmware.7
docker tag registry.tkg.vmware.run/csi/csi-node-driver-registrar:v1.1.0_vmware.7 harbor.vmwarelab.edu/library/csi/csi-node-driver-registrar:v1.1.0_vmware.7
docker push harbor.vmwarelab.edu/library/csi/csi-node-driver-registrar:v1.1.0_vmware.7

docker pull registry.tkg.vmware.run/csi/csi-provisioner:v1.4.0_vmware.2
docker tag registry.tkg.vmware.run/csi/csi-provisioner:v1.4.0_vmware.2 harbor.vmwarelab.edu/library/csi/csi-provisioner:v1.4.0_vmware.2
docker push harbor.vmwarelab.edu/library/csi/csi-provisioner:v1.4.0_vmware.2

docker pull registry.tkg.vmware.run/dex:v2.22.0_vmware.1
docker tag registry.tkg.vmware.run/dex:v2.22.0_vmware.1 harbor.vmwarelab.edu/library/dex:v2.22.0_vmware.1
docker push harbor.vmwarelab.edu/library/dex:v2.22.0_vmware.1

docker pull registry.tkg.vmware.run/envoy:v1.13.1_vmware.1
docker tag registry.tkg.vmware.run/envoy:v1.13.1_vmware.1 harbor.vmwarelab.edu/library/envoy:v1.13.1_vmware.1
docker push harbor.vmwarelab.edu/library/envoy:v1.13.1_vmware.1

docker pull registry.tkg.vmware.run/etcd:v3.4.3_vmware.5
docker tag registry.tkg.vmware.run/etcd:v3.4.3_vmware.5 harbor.vmwarelab.edu/library/etcd:v3.4.3_vmware.5
docker push harbor.vmwarelab.edu/library/etcd:v3.4.3_vmware.5

docker pull registry.tkg.vmware.run/fluent-bit:v1.3.8_vmware.1
docker tag registry.tkg.vmware.run/fluent-bit:v1.3.8_vmware.1 harbor.vmwarelab.edu/library/fluent-bit:v1.3.8_vmware.1
docker push harbor.vmwarelab.edu/library/fluent-bit:v1.3.8_vmware.1

docker pull registry.tkg.vmware.run/gangway:v3.2.0_vmware.1
docker tag registry.tkg.vmware.run/gangway:v3.2.0_vmware.1 harbor.vmwarelab.edu/library/gangway:v3.2.0_vmware.1
docker push harbor.vmwarelab.edu/library/gangway:v3.2.0_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/kubeadm-control-plane-controller:v0.3.5_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/kubeadm-control-plane-controller:v0.3.5_vmware.1 harbor.vmwarelab.edu/library/cluster-api/kubeadm-control-plane-controller:v0.3.5_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/kubeadm-control-plane-controller:v0.3.5_vmware.1

docker pull registry.tkg.vmware.run/kind/node:v1.18.2_vmware.1
docker tag registry.tkg.vmware.run/kind/node:v1.18.2_vmware.1 harbor.vmwarelab.edu/library/kind/node:v1.18.2_vmware.1
docker push harbor.vmwarelab.edu/library/kind/node:v1.18.2_vmware.1

docker pull registry.tkg.vmware.run/kube-apiserver:v1.18.2_vmware.1
docker tag registry.tkg.vmware.run/kube-apiserver:v1.18.2_vmware.1 harbor.vmwarelab.edu/library/kube-apiserver:v1.18.2_vmware.1
docker push harbor.vmwarelab.edu/library/kube-apiserver:v1.18.2_vmware.1

docker pull registry.tkg.vmware.run/kube-controller-manager:v1.18.2_vmware.1
docker tag registry.tkg.vmware.run/kube-controller-manager:v1.18.2_vmware.1 harbor.vmwarelab.edu/library/kube-controller-manager:v1.18.2_vmware.1
docker push harbor.vmwarelab.edu/library/kube-controller-manager:v1.18.2_vmware.1

docker pull registry.tkg.vmware.run/kube-proxy:v1.18.2_vmware.1
docker tag registry.tkg.vmware.run/kube-proxy:v1.18.2_vmware.1 harbor.vmwarelab.edu/library/kube-proxy:v1.18.2_vmware.1
docker push harbor.vmwarelab.edu/library/kube-proxy:v1.18.2_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2
docker tag registry.tkg.vmware.run/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2 harbor.vmwarelab.edu/library/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2
docker push harbor.vmwarelab.edu/library/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2

docker pull registry.tkg.vmware.run/kube-scheduler:v1.18.2_vmware.1
docker tag registry.tkg.vmware.run/kube-scheduler:v1.18.2_vmware.1 harbor.vmwarelab.edu/library/kube-scheduler:v1.18.2_vmware.1
docker push harbor.vmwarelab.edu/library/kube-scheduler:v1.18.2_vmware.1

docker pull registry.tkg.vmware.run/pause:3.2
docker tag registry.tkg.vmware.run/pause:3.2 harbor.vmwarelab.edu/library/pause:3.2
docker push harbor.vmwarelab.edu/library/pause:3.2

docker pull registry.tkg.vmware.run/cluster-api/kubeadm-bootstrap-controller:v0.3.6_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/kubeadm-bootstrap-controller:v0.3.6_vmware.1 harbor.vmwarelab.edu/library/cluster-api/kubeadm-bootstrap-controller:v0.3.6_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/kubeadm-bootstrap-controller:v0.3.6_vmware.1

docker pull registry.tkg.vmware.run/calico-all/cni-plugin:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/cni-plugin:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/cni-plugin:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/cni-plugin:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/calico-all/kube-controllers:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/kube-controllers:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/kube-controllers:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/kube-controllers:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/calico-all/node:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/node:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/node:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/node:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/calico-all/pod2daemon:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/pod2daemon:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/pod2daemon:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/pod2daemon:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-aws-controller:v0.5.4_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-aws-controller:v0.5.4_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-aws-controller:v0.5.4_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-aws-controller:v0.5.4_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-controller:v0.3.6_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-controller:v0.3.6_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-controller:v0.3.6_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-controller:v0.3.6_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-vsphere-controller:v0.6.5_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-vsphere-controller:v0.6.5_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-vsphere-controller:v0.6.5_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-vsphere-controller:v0.6.5_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-azure-controller:v0.4.4_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-azure-controller:v0.4.4_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-azure-controller:v0.4.4_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-azure-controller:v0.4.4_vmware.1

docker pull registry.tkg.vmware.run/azure-cloud-controller-manager:v0.5.1_vmware.1
docker tag registry.tkg.vmware.run/azure-cloud-controller-manager:v0.5.1_vmware.1 harbor.vmwarelab.edu/library/azure-cloud-controller-manager:v0.5.1_vmware.1
docker push harbor.vmwarelab.edu/library/azure-cloud-controller-manager:v0.5.1_vmware.1

docker pull registry.tkg.vmware.run/azure-cloud-node-manager:v0.5.1_vmware.1
docker tag registry.tkg.vmware.run/azure-cloud-node-manager:v0.5.1_vmware.1 harbor.vmwarelab.edu/library/azure-cloud-node-manager:v0.5.1_vmware.1
docker push harbor.vmwarelab.edu/library/azure-cloud-node-manager:v0.5.1_vmware.1

docker pull registry.tkg.vmware.run/ccm/manager:v1.1.0_vmware.2
docker tag registry.tkg.vmware.run/ccm/manager:v1.1.0_vmware.2 harbor.vmwarelab.edu/library/ccm/manager:v1.1.0_vmware.2
docker push harbor.vmwarelab.edu/library/ccm/manager:v1.1.0_vmware.2

docker pull registry.tkg.vmware.run/cert-manager/cert-manager-controller:v0.11.0_vmware.1
docker tag registry.tkg.vmware.run/cert-manager/cert-manager-controller:v0.11.0_vmware.1 harbor.vmwarelab.edu/library/cert-manager/cert-manager-controller:v0.11.0_vmware.1
docker push harbor.vmwarelab.edu/library/cert-manager/cert-manager-controller:v0.11.0_vmware.1

docker pull registry.tkg.vmware.run/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1
docker tag registry.tkg.vmware.run/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1 harbor.vmwarelab.edu/library/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1
docker push harbor.vmwarelab.edu/library/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1

docker pull registry.tkg.vmware.run/cert-manager/cert-manager-webhook:v0.11.0_vmware.1
docker tag registry.tkg.vmware.run/cert-manager/cert-manager-webhook:v0.11.0_vmware.1 harbor.vmwarelab.edu/library/cert-manager/cert-manager-webhook:v0.11.0_vmware.1
docker push harbor.vmwarelab.edu/library/cert-manager/cert-manager-webhook:v0.11.0_vmware.1

docker pull registry.tkg.vmware.run/contour:v1.2.1_vmware.1
docker tag registry.tkg.vmware.run/contour:v1.2.1_vmware.1 harbor.vmwarelab.edu/library/contour:v1.2.1_vmware.1
docker push harbor.vmwarelab.edu/library/contour:v1.2.1_vmware.1

docker pull registry.tkg.vmware.run/coredns:v1.6.7_vmware.1
docker tag registry.tkg.vmware.run/coredns:v1.6.7_vmware.1 harbor.vmwarelab.edu/library/coredns:v1.6.7_vmware.1
docker push harbor.vmwarelab.edu/library/coredns:v1.6.7_vmware.1

docker pull registry.tkg.vmware.run/csi/csi-attacher:v2.0.0_vmware.1
docker tag registry.tkg.vmware.run/csi/csi-attacher:v2.0.0_vmware.1 harbor.vmwarelab.edu/library/csi/csi-attacher:v2.0.0_vmware.1
docker push harbor.vmwarelab.edu/library/csi/csi-attacher:v2.0.0_vmware.1

docker pull registry.tkg.vmware.run/csi/vsphere-block-csi-driver:v2.0.0_vmware.1
docker tag registry.tkg.vmware.run/csi/vsphere-block-csi-driver:v2.0.0_vmware.1 harbor.vmwarelab.edu/library/csi/vsphere-block-csi-driver:v2.0.0_vmware.1
docker push harbor.vmwarelab.edu/library/csi/vsphere-block-csi-driver:v2.0.0_vmware.1

docker pull registry.tkg.vmware.run/csi/csi-livenessprobe:v1.1.0_vmware.7
docker tag registry.tkg.vmware.run/csi/csi-livenessprobe:v1.1.0_vmware.7 harbor.vmwarelab.edu/library/csi/csi-livenessprobe:v1.1.0_vmware.7
docker push harbor.vmwarelab.edu/library/csi/csi-livenessprobe:v1.1.0_vmware.7

docker pull registry.tkg.vmware.run/csi/volume-metadata-syncer:v2.0.0_vmware.1
docker tag registry.tkg.vmware.run/csi/volume-metadata-syncer:v2.0.0_vmware.1 harbor.vmwarelab.edu/library/csi/volume-metadata-syncer:v2.0.0_vmware.1
docker push harbor.vmwarelab.edu/library/csi/volume-metadata-syncer:v2.0.0_vmware.1

docker pull registry.tkg.vmware.run/csi/csi-node-driver-registrar:v1.2.0_vmware.1
docker tag registry.tkg.vmware.run/csi/csi-node-driver-registrar:v1.2.0_vmware.1 harbor.vmwarelab.edu/library/csi/csi-node-driver-registrar:v1.2.0_vmware.1
docker push harbor.vmwarelab.edu/library/csi/csi-node-driver-registrar:v1.2.0_vmware.1

docker pull registry.tkg.vmware.run/csi/csi-provisioner:v1.4.0_vmware.2
docker tag registry.tkg.vmware.run/csi/csi-provisioner:v1.4.0_vmware.2 harbor.vmwarelab.edu/library/csi/csi-provisioner:v1.4.0_vmware.2
docker push harbor.vmwarelab.edu/library/csi/csi-provisioner:v1.4.0_vmware.2

docker pull registry.tkg.vmware.run/dex:v2.22.0_vmware.1
docker tag registry.tkg.vmware.run/dex:v2.22.0_vmware.1 harbor.vmwarelab.edu/library/dex:v2.22.0_vmware.1
docker push harbor.vmwarelab.edu/library/dex:v2.22.0_vmware.1

docker pull registry.tkg.vmware.run/envoy:v1.13.1_vmware.1
docker tag registry.tkg.vmware.run/envoy:v1.13.1_vmware.1 harbor.vmwarelab.edu/library/envoy:v1.13.1_vmware.1
docker push harbor.vmwarelab.edu/library/envoy:v1.13.1_vmware.1

docker pull registry.tkg.vmware.run/etcd:v3.4.3_vmware.5
docker tag registry.tkg.vmware.run/etcd:v3.4.3_vmware.5 harbor.vmwarelab.edu/library/etcd:v3.4.3_vmware.5
docker push harbor.vmwarelab.edu/library/etcd:v3.4.3_vmware.5

docker pull registry.tkg.vmware.run/fluent-bit:v1.3.8_vmware.1
docker tag registry.tkg.vmware.run/fluent-bit:v1.3.8_vmware.1 harbor.vmwarelab.edu/library/fluent-bit:v1.3.8_vmware.1
docker push harbor.vmwarelab.edu/library/fluent-bit:v1.3.8_vmware.1

docker pull registry.tkg.vmware.run/gangway:v3.2.0_vmware.1
docker tag registry.tkg.vmware.run/gangway:v3.2.0_vmware.1 harbor.vmwarelab.edu/library/gangway:v3.2.0_vmware.1
docker push harbor.vmwarelab.edu/library/gangway:v3.2.0_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/kubeadm-control-plane-controller:v0.3.6_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/kubeadm-control-plane-controller:v0.3.6_vmware.1 harbor.vmwarelab.edu/library/cluster-api/kubeadm-control-plane-controller:v0.3.6_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/kubeadm-control-plane-controller:v0.3.6_vmware.1

docker pull registry.tkg.vmware.run/kind/node:v1.18.3_vmware.1
docker tag registry.tkg.vmware.run/kind/node:v1.18.3_vmware.1 harbor.vmwarelab.edu/library/kind/node:v1.18.3_vmware.1
docker push harbor.vmwarelab.edu/library/kind/node:v1.18.3_vmware.1

docker pull registry.tkg.vmware.run/kube-apiserver:v1.18.3_vmware.1
docker tag registry.tkg.vmware.run/kube-apiserver:v1.18.3_vmware.1 harbor.vmwarelab.edu/library/kube-apiserver:v1.18.3_vmware.1
docker push harbor.vmwarelab.edu/library/kube-apiserver:v1.18.3_vmware.1

docker pull registry.tkg.vmware.run/kube-controller-manager:v1.18.3_vmware.1
docker tag registry.tkg.vmware.run/kube-controller-manager:v1.18.3_vmware.1 harbor.vmwarelab.edu/library/kube-controller-manager:v1.18.3_vmware.1
docker push harbor.vmwarelab.edu/library/kube-controller-manager:v1.18.3_vmware.1

docker pull registry.tkg.vmware.run/kube-proxy:v1.18.3_vmware.1
docker tag registry.tkg.vmware.run/kube-proxy:v1.18.3_vmware.1 harbor.vmwarelab.edu/library/kube-proxy:v1.18.3_vmware.1
docker push harbor.vmwarelab.edu/library/kube-proxy:v1.18.3_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2
docker tag registry.tkg.vmware.run/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2 harbor.vmwarelab.edu/library/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2
docker push harbor.vmwarelab.edu/library/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2

docker pull registry.tkg.vmware.run/kube-scheduler:v1.18.3_vmware.1
docker tag registry.tkg.vmware.run/kube-scheduler:v1.18.3_vmware.1 harbor.vmwarelab.edu/library/kube-scheduler:v1.18.3_vmware.1
docker push harbor.vmwarelab.edu/library/kube-scheduler:v1.18.3_vmware.1

docker pull registry.tkg.vmware.run/pause:3.2
docker tag registry.tkg.vmware.run/pause:3.2 harbor.vmwarelab.edu/library/pause:3.2
docker push harbor.vmwarelab.edu/library/pause:3.2

docker pull registry.tkg.vmware.run/cluster-api/kubeadm-bootstrap-controller:v0.3.6_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/kubeadm-bootstrap-controller:v0.3.6_vmware.1 harbor.vmwarelab.edu/library/cluster-api/kubeadm-bootstrap-controller:v0.3.6_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/kubeadm-bootstrap-controller:v0.3.6_vmware.1

docker pull registry.tkg.vmware.run/calico-all/cni-plugin:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/cni-plugin:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/cni-plugin:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/cni-plugin:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/calico-all/kube-controllers:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/kube-controllers:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/kube-controllers:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/kube-controllers:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/calico-all/node:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/node:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/node:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/node:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/calico-all/pod2daemon:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/pod2daemon:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/pod2daemon:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/pod2daemon:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-aws-controller:v0.5.4_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-aws-controller:v0.5.4_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-aws-controller:v0.5.4_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-aws-controller:v0.5.4_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-controller:v0.3.6_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-controller:v0.3.6_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-controller:v0.3.6_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-controller:v0.3.6_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-vsphere-controller:v0.6.5_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-vsphere-controller:v0.6.5_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-vsphere-controller:v0.6.5_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-vsphere-controller:v0.6.5_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-azure-controller:v0.4.4_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-azure-controller:v0.4.4_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-azure-controller:v0.4.4_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-azure-controller:v0.4.4_vmware.1

docker pull registry.tkg.vmware.run/azure-cloud-controller-manager:v0.5.1_vmware.1
docker tag registry.tkg.vmware.run/azure-cloud-controller-manager:v0.5.1_vmware.1 harbor.vmwarelab.edu/library/azure-cloud-controller-manager:v0.5.1_vmware.1
docker push harbor.vmwarelab.edu/library/azure-cloud-controller-manager:v0.5.1_vmware.1

docker pull registry.tkg.vmware.run/azure-cloud-node-manager:v0.5.1_vmware.1
docker tag registry.tkg.vmware.run/azure-cloud-node-manager:v0.5.1_vmware.1 harbor.vmwarelab.edu/library/azure-cloud-node-manager:v0.5.1_vmware.1
docker push harbor.vmwarelab.edu/library/azure-cloud-node-manager:v0.5.1_vmware.1

docker pull registry.tkg.vmware.run/ccm/manager:v1.1.0_vmware.2
docker tag registry.tkg.vmware.run/ccm/manager:v1.1.0_vmware.2 harbor.vmwarelab.edu/library/ccm/manager:v1.1.0_vmware.2
docker push harbor.vmwarelab.edu/library/ccm/manager:v1.1.0_vmware.2

docker pull registry.tkg.vmware.run/cert-manager/cert-manager-controller:v0.11.0_vmware.1
docker tag registry.tkg.vmware.run/cert-manager/cert-manager-controller:v0.11.0_vmware.1 harbor.vmwarelab.edu/library/cert-manager/cert-manager-controller:v0.11.0_vmware.1
docker push harbor.vmwarelab.edu/library/cert-manager/cert-manager-controller:v0.11.0_vmware.1

docker pull registry.tkg.vmware.run/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1
docker tag registry.tkg.vmware.run/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1 harbor.vmwarelab.edu/library/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1
docker push harbor.vmwarelab.edu/library/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1

docker pull registry.tkg.vmware.run/cert-manager/cert-manager-webhook:v0.11.0_vmware.1
docker tag registry.tkg.vmware.run/cert-manager/cert-manager-webhook:v0.11.0_vmware.1 harbor.vmwarelab.edu/library/cert-manager/cert-manager-webhook:v0.11.0_vmware.1
docker push harbor.vmwarelab.edu/library/cert-manager/cert-manager-webhook:v0.11.0_vmware.1

docker pull registry.tkg.vmware.run/contour:v1.2.1_vmware.1
docker tag registry.tkg.vmware.run/contour:v1.2.1_vmware.1 harbor.vmwarelab.edu/library/contour:v1.2.1_vmware.1
docker push harbor.vmwarelab.edu/library/contour:v1.2.1_vmware.1

docker pull registry.tkg.vmware.run/coredns:v1.6.5_vmware.5
docker tag registry.tkg.vmware.run/coredns:v1.6.5_vmware.5 harbor.vmwarelab.edu/library/coredns:v1.6.5_vmware.5
docker push harbor.vmwarelab.edu/library/coredns:v1.6.5_vmware.5

docker pull registry.tkg.vmware.run/csi/csi-attacher:v2.0.0_vmware.1
docker tag registry.tkg.vmware.run/csi/csi-attacher:v2.0.0_vmware.1 harbor.vmwarelab.edu/library/csi/csi-attacher:v2.0.0_vmware.1
docker push harbor.vmwarelab.edu/library/csi/csi-attacher:v2.0.0_vmware.1

docker pull registry.tkg.vmware.run/csi/vsphere-block-csi-driver:v2.0.0_vmware.1
docker tag registry.tkg.vmware.run/csi/vsphere-block-csi-driver:v2.0.0_vmware.1 harbor.vmwarelab.edu/library/csi/vsphere-block-csi-driver:v2.0.0_vmware.1
docker push harbor.vmwarelab.edu/library/csi/vsphere-block-csi-driver:v2.0.0_vmware.1

docker pull registry.tkg.vmware.run/csi/csi-livenessprobe:v1.1.0_vmware.7
docker tag registry.tkg.vmware.run/csi/csi-livenessprobe:v1.1.0_vmware.7 harbor.vmwarelab.edu/library/csi/csi-livenessprobe:v1.1.0_vmware.7
docker push harbor.vmwarelab.edu/library/csi/csi-livenessprobe:v1.1.0_vmware.7

docker pull registry.tkg.vmware.run/csi/volume-metadata-syncer:v2.0.0_vmware.1
docker tag registry.tkg.vmware.run/csi/volume-metadata-syncer:v2.0.0_vmware.1 harbor.vmwarelab.edu/library/csi/volume-metadata-syncer:v2.0.0_vmware.1
docker push harbor.vmwarelab.edu/library/csi/volume-metadata-syncer:v2.0.0_vmware.1

docker pull registry.tkg.vmware.run/csi/csi-node-driver-registrar:v1.2.0_vmware.1
docker tag registry.tkg.vmware.run/csi/csi-node-driver-registrar:v1.2.0_vmware.1 harbor.vmwarelab.edu/library/csi/csi-node-driver-registrar:v1.2.0_vmware.1
docker push harbor.vmwarelab.edu/library/csi/csi-node-driver-registrar:v1.2.0_vmware.1

docker pull registry.tkg.vmware.run/csi/csi-provisioner:v1.4.0_vmware.2
docker tag registry.tkg.vmware.run/csi/csi-provisioner:v1.4.0_vmware.2 harbor.vmwarelab.edu/library/csi/csi-provisioner:v1.4.0_vmware.2
docker push harbor.vmwarelab.edu/library/csi/csi-provisioner:v1.4.0_vmware.2

docker pull registry.tkg.vmware.run/dex:v2.22.0_vmware.1
docker tag registry.tkg.vmware.run/dex:v2.22.0_vmware.1 harbor.vmwarelab.edu/library/dex:v2.22.0_vmware.1
docker push harbor.vmwarelab.edu/library/dex:v2.22.0_vmware.1

docker pull registry.tkg.vmware.run/envoy:v1.13.1_vmware.1
docker tag registry.tkg.vmware.run/envoy:v1.13.1_vmware.1 harbor.vmwarelab.edu/library/envoy:v1.13.1_vmware.1
docker push harbor.vmwarelab.edu/library/envoy:v1.13.1_vmware.1

docker pull registry.tkg.vmware.run/etcd:v3.4.3_vmware.5
docker tag registry.tkg.vmware.run/etcd:v3.4.3_vmware.5 harbor.vmwarelab.edu/library/etcd:v3.4.3_vmware.5
docker push harbor.vmwarelab.edu/library/etcd:v3.4.3_vmware.5

docker pull registry.tkg.vmware.run/fluent-bit:v1.3.8_vmware.1
docker tag registry.tkg.vmware.run/fluent-bit:v1.3.8_vmware.1 harbor.vmwarelab.edu/library/fluent-bit:v1.3.8_vmware.1
docker push harbor.vmwarelab.edu/library/fluent-bit:v1.3.8_vmware.1

docker pull registry.tkg.vmware.run/gangway:v3.2.0_vmware.1
docker tag registry.tkg.vmware.run/gangway:v3.2.0_vmware.1 harbor.vmwarelab.edu/library/gangway:v3.2.0_vmware.1
docker push harbor.vmwarelab.edu/library/gangway:v3.2.0_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/kubeadm-control-plane-controller:v0.3.6_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/kubeadm-control-plane-controller:v0.3.6_vmware.1 harbor.vmwarelab.edu/library/cluster-api/kubeadm-control-plane-controller:v0.3.6_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/kubeadm-control-plane-controller:v0.3.6_vmware.1

docker pull registry.tkg.vmware.run/kind/node:v1.18.3_vmware.1
docker tag registry.tkg.vmware.run/kind/node:v1.18.3_vmware.1 harbor.vmwarelab.edu/library/kind/node:v1.18.3_vmware.1
docker push harbor.vmwarelab.edu/library/kind/node:v1.18.3_vmware.1

docker pull registry.tkg.vmware.run/kube-apiserver:v1.17.6_vmware.1
docker tag registry.tkg.vmware.run/kube-apiserver:v1.17.6_vmware.1 harbor.vmwarelab.edu/library/kube-apiserver:v1.17.6_vmware.1
docker push harbor.vmwarelab.edu/library/kube-apiserver:v1.17.6_vmware.1

docker pull registry.tkg.vmware.run/kube-controller-manager:v1.17.6_vmware.1
docker tag registry.tkg.vmware.run/kube-controller-manager:v1.17.6_vmware.1 harbor.vmwarelab.edu/library/kube-controller-manager:v1.17.6_vmware.1
docker push harbor.vmwarelab.edu/library/kube-controller-manager:v1.17.6_vmware.1

docker pull registry.tkg.vmware.run/kube-proxy:v1.17.6_vmware.1
docker tag registry.tkg.vmware.run/kube-proxy:v1.17.6_vmware.1 harbor.vmwarelab.edu/library/kube-proxy:v1.17.6_vmware.1
docker push harbor.vmwarelab.edu/library/kube-proxy:v1.17.6_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2
docker tag registry.tkg.vmware.run/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2 harbor.vmwarelab.edu/library/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2
docker push harbor.vmwarelab.edu/library/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2

docker pull registry.tkg.vmware.run/kube-scheduler:v1.17.6_vmware.1
docker tag registry.tkg.vmware.run/kube-scheduler:v1.17.6_vmware.1 harbor.vmwarelab.edu/library/kube-scheduler:v1.17.6_vmware.1
docker push harbor.vmwarelab.edu/library/kube-scheduler:v1.17.6_vmware.1

docker pull registry.tkg.vmware.run/pause:3.1
docker tag registry.tkg.vmware.run/pause:3.1 harbor.vmwarelab.edu/library/pause:3.1
docker push harbor.vmwarelab.edu/library/pause:3.1

docker pull registry.tkg.vmware.run/kube-apiserver:v1.17.3_vmware.2
docker tag registry.tkg.vmware.run/kube-apiserver:v1.17.3_vmware.2 harbor.vmwarelab.edu/library/kube-apiserver:v1.17.3_vmware.2
docker push harbor.vmwarelab.edu/library/kube-apiserver:v1.17.3_vmware.2

docker pull registry.tkg.vmware.run/kube-controller-manager:v1.17.3_vmware.2
docker tag registry.tkg.vmware.run/kube-controller-manager:v1.17.3_vmware.2 harbor.vmwarelab.edu/library/kube-controller-manager:v1.17.3_vmware.2
docker push harbor.vmwarelab.edu/library/kube-controller-manager:v1.17.3_vmware.2

docker pull registry.tkg.vmware.run/kube-scheduler:v1.17.3_vmware.2
docker tag registry.tkg.vmware.run/kube-scheduler:v1.17.3_vmware.2 harbor.vmwarelab.edu/library/kube-scheduler:v1.17.3_vmware.2
docker push harbor.vmwarelab.edu/library/kube-scheduler:v1.17.3_vmware.2

docker pull registry.tkg.vmware.run/kube-proxy:v1.17.3_vmware.2
docker tag registry.tkg.vmware.run/kube-proxy:v1.17.3_vmware.2 harbor.vmwarelab.edu/library/kube-proxy:v1.17.3_vmware.2
docker push harbor.vmwarelab.edu/library/kube-proxy:v1.17.3_vmware.2

docker pull registry.tkg.vmware.run/coredns:v1.6.5_vmware.4
docker tag registry.tkg.vmware.run/coredns:v1.6.5_vmware.4 harbor.vmwarelab.edu/library/coredns:v1.6.5_vmware.4
docker push harbor.vmwarelab.edu/library/coredns:v1.6.5_vmware.4

docker pull registry.tkg.vmware.run/etcd:v3.4.3_vmware.4
docker tag registry.tkg.vmware.run/etcd:v3.4.3_vmware.4 harbor.vmwarelab.edu/library/etcd:v3.4.3_vmware.4
docker push harbor.vmwarelab.edu/library/etcd:v3.4.3_vmware.4

docker pull registry.tkg.vmware.run/pause:3.1
docker tag registry.tkg.vmware.run/pause:3.1 harbor.vmwarelab.edu/library/pause:3.1
docker push harbor.vmwarelab.edu/library/pause:3.1

docker pull registry.tkg.vmware.run/ccm/manager:v1.1.0_vmware.2
docker tag registry.tkg.vmware.run/ccm/manager:v1.1.0_vmware.2 harbor.vmwarelab.edu/library/ccm/manager:v1.1.0_vmware.2
docker push harbor.vmwarelab.edu/library/ccm/manager:v1.1.0_vmware.2

docker pull registry.tkg.vmware.run/csi/vsphere-block-csi-driver:v1.0.2_vmware.1
docker tag registry.tkg.vmware.run/csi/vsphere-block-csi-driver:v1.0.2_vmware.1 harbor.vmwarelab.edu/library/csi/vsphere-block-csi-driver:v1.0.2_vmware.1
docker push harbor.vmwarelab.edu/library/csi/vsphere-block-csi-driver:v1.0.2_vmware.1

docker pull registry.tkg.vmware.run/csi/volume-metadata-syncer:v1.0.2_vmware.1
docker tag registry.tkg.vmware.run/csi/volume-metadata-syncer:v1.0.2_vmware.1 harbor.vmwarelab.edu/library/csi/volume-metadata-syncer:v1.0.2_vmware.1
docker push harbor.vmwarelab.edu/library/csi/volume-metadata-syncer:v1.0.2_vmware.1

docker pull registry.tkg.vmware.run/csi/csi-attacher:v1.1.1_vmware.7
docker tag registry.tkg.vmware.run/csi/csi-attacher:v1.1.1_vmware.7 harbor.vmwarelab.edu/library/csi/csi-attacher:v1.1.1_vmware.7
docker push harbor.vmwarelab.edu/library/csi/csi-attacher:v1.1.1_vmware.7

docker pull registry.tkg.vmware.run/csi/csi-livenessprobe:v1.1.0_vmware.7
docker tag registry.tkg.vmware.run/csi/csi-livenessprobe:v1.1.0_vmware.7 harbor.vmwarelab.edu/library/csi/csi-livenessprobe:v1.1.0_vmware.7
docker push harbor.vmwarelab.edu/library/csi/csi-livenessprobe:v1.1.0_vmware.7

docker pull registry.tkg.vmware.run/csi/csi-provisioner:v1.4.0_vmware.2
docker tag registry.tkg.vmware.run/csi/csi-provisioner:v1.4.0_vmware.2 harbor.vmwarelab.edu/library/csi/csi-provisioner:v1.4.0_vmware.2
docker push harbor.vmwarelab.edu/library/csi/csi-provisioner:v1.4.0_vmware.2

docker pull registry.tkg.vmware.run/csi/csi-node-driver-registrar:v1.1.0_vmware.7
docker tag registry.tkg.vmware.run/csi/csi-node-driver-registrar:v1.1.0_vmware.7 harbor.vmwarelab.edu/library/csi/csi-node-driver-registrar:v1.1.0_vmware.7
docker push harbor.vmwarelab.edu/library/csi/csi-node-driver-registrar:v1.1.0_vmware.7

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-controller:v0.3.3_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-controller:v0.3.3_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-controller:v0.3.3_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-controller:v0.3.3_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-vsphere-controller:v0.6.3_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-vsphere-controller:v0.6.3_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-vsphere-controller:v0.6.3_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-vsphere-controller:v0.6.3_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/cluster-api-aws-controller:v0.5.2_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/cluster-api-aws-controller:v0.5.2_vmware.1 harbor.vmwarelab.edu/library/cluster-api/cluster-api-aws-controller:v0.5.2_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/cluster-api-aws-controller:v0.5.2_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/kubeadm-bootstrap-controller:v0.3.3_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/kubeadm-bootstrap-controller:v0.3.3_vmware.1 harbor.vmwarelab.edu/library/cluster-api/kubeadm-bootstrap-controller:v0.3.3_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/kubeadm-bootstrap-controller:v0.3.3_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/kubeadm-control-plane-controller:v0.3.3_vmware.1
docker tag registry.tkg.vmware.run/cluster-api/kubeadm-control-plane-controller:v0.3.3_vmware.1 harbor.vmwarelab.edu/library/cluster-api/kubeadm-control-plane-controller:v0.3.3_vmware.1
docker push harbor.vmwarelab.edu/library/cluster-api/kubeadm-control-plane-controller:v0.3.3_vmware.1

docker pull registry.tkg.vmware.run/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2
docker tag registry.tkg.vmware.run/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2 harbor.vmwarelab.edu/library/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2
docker push harbor.vmwarelab.edu/library/cluster-api/kube-rbac-proxy:v0.4.1_vmware.2

docker pull registry.tkg.vmware.run/calico-all/node:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/node:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/node:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/node:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/calico-all/kube-controllers:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/kube-controllers:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/kube-controllers:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/kube-controllers:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/calico-all/cni-plugin:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/cni-plugin:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/cni-plugin:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/cni-plugin:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/calico-all/pod2daemon:v3.11.2_vmware.1
docker tag registry.tkg.vmware.run/calico-all/pod2daemon:v3.11.2_vmware.1 harbor.vmwarelab.edu/library/calico-all/pod2daemon:v3.11.2_vmware.1
docker push harbor.vmwarelab.edu/library/calico-all/pod2daemon:v3.11.2_vmware.1

docker pull registry.tkg.vmware.run/kind/node:v1.17.3_vmware.2
docker tag registry.tkg.vmware.run/kind/node:v1.17.3_vmware.2 harbor.vmwarelab.edu/library/kind/node:v1.17.3_vmware.2
docker push harbor.vmwarelab.edu/library/kind/node:v1.17.3_vmware.2

docker pull registry.tkg.vmware.run/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1
docker tag registry.tkg.vmware.run/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1 harbor.vmwarelab.edu/library/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1
docker push harbor.vmwarelab.edu/library/cert-manager/cert-manager-cainjector:v0.11.0_vmware.1

docker pull registry.tkg.vmware.run/cert-manager/cert-manager-controller:v0.11.0_vmware.1
docker tag registry.tkg.vmware.run/cert-manager/cert-manager-controller:v0.11.0_vmware.1 harbor.vmwarelab.edu/library/cert-manager/cert-manager-controller:v0.11.0_vmware.1
docker push harbor.vmwarelab.edu/library/cert-manager/cert-manager-controller:v0.11.0_vmware.1

docker pull registry.tkg.vmware.run/cert-manager/cert-manager-webhook:v0.11.0_vmware.1
docker tag registry.tkg.vmware.run/cert-manager/cert-manager-webhook:v0.11.0_vmware.1 harbor.vmwarelab.edu/library/cert-manager/cert-manager-webhook:v0.11.0_vmware.1
docker push harbor.vmwarelab.edu/library/cert-manager/cert-manager-webhook:v0.11.0_vmware.1

docker pull registry.tkg.vmware.run/gangway:v3.2.0_vmware.1
docker tag registry.tkg.vmware.run/gangway:v3.2.0_vmware.1 harbor.vmwarelab.edu/library/gangway:v3.2.0_vmware.1
docker push harbor.vmwarelab.edu/library/gangway:v3.2.0_vmware.1

docker pull registry.tkg.vmware.run/contour:v1.2.1_vmware.1
docker tag registry.tkg.vmware.run/contour:v1.2.1_vmware.1 harbor.vmwarelab.edu/library/contour:v1.2.1_vmware.1
docker push harbor.vmwarelab.edu/library/contour:v1.2.1_vmware.1

docker pull registry.tkg.vmware.run/envoy:v1.13.1_vmware.1
docker tag registry.tkg.vmware.run/envoy:v1.13.1_vmware.1 harbor.vmwarelab.edu/library/envoy:v1.13.1_vmware.1
docker push harbor.vmwarelab.edu/library/envoy:v1.13.1_vmware.1

docker pull registry.tkg.vmware.run/fluent-bit:v1.3.8_vmware.1
docker tag registry.tkg.vmware.run/fluent-bit:v1.3.8_vmware.1 harbor.vmwarelab.edu/library/fluent-bit:v1.3.8_vmware.1
docker push harbor.vmwarelab.edu/library/fluent-bit:v1.3.8_vmware.1

docker pull registry.tkg.vmware.run/dex:v2.22.0_vmware.1
docker tag registry.tkg.vmware.run/dex:v2.22.0_vmware.1 harbor.vmwarelab.edu/library/dex:v2.22.0_vmware.1
docker push harbor.vmwarelab.edu/library/dex:v2.22.0_vmware.1

