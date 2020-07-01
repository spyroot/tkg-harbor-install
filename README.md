# tkg and harbor install tooling

Tested on ubuntu vm.
Harbor and CI on same machnine, if you run Harbor on another node, copy harbor-install.sh it will prepare node.

It contains a set of script to adjust default VMware TKG package and install TKG in pair with a local instance of Harbor.

- install.sh - install TKG with Harbor.
- cleanup.sh  deletes cluster and test cluster cnfs cluster
- gen-patch.sh  generates a patch for .tkg/provider vsphere , install.sh will call it
- gen-publish-images.sh  generate docker push command to re-push all images to a local Harbor
- gen-template.sh  - generates a template for contained that required for Kind so it can pull image from Harbor as well.
- harbor-install.sh  - install Harbor,  Generate all certs required, adjust docker to accept local Harbor.
- harbor-push.sh  -  push scrip to Harbor
- patch_dev  patch_prod  README.md
- template.yaml

