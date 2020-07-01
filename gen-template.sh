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
# Generates template that pushed to kind instance on CI.
#
# Mustafa mbayramo@vmware.com
#
# defaults install.sh should pass correct
if [[ -z "${REPO}" ]]; then
  REPO="harbor.vmwarelab.edu"
else
  REPO="${REPO}"
fi

#!/bin/bash
echo "version = 2
[plugins]
  [plugins.\"io.containerd.grpc.v1.cri\"]
    sandbox_image = \"registry.tkg.vmware.run/pause:3.2\"
    [plugins.\"io.containerd.grpc.v1.cri\".containerd]
      default_runtime_name = \"runc\"
      [plugins.\"io.containerd.grpc.v1.cri\".containerd.runtimes.runc]
        runtime_type = \"io.containerd.runc.v2\"
    [plugins.\"io.containerd.grpc.v1.cri\".registry]
      [plugins.\"io.containerd.grpc.v1.cri\".registry.mirrors]
        [plugins.\"io.containerd.grpc.v1.cri\".registry.mirrors.\"$REPO\"]
          endpoint = [\"https://$REPO\"]
      [plugins.\"io.containerd.grpc.v1.cri\".registry.configs]
        [plugins.\"io.containerd.grpc.v1.cri\".registry.configs.\"$REPO\"]
          [plugins.\"io.containerd.grpc.v1.cri\".registry.configs.\"$REPO\".tls]
            insecure_skip_verify = true" > template.yaml 
