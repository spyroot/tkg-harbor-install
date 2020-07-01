#!/usr/bin/env bash
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

BOM_DIR=${HOME}/.tkg/bom

if [ -z "$TKG_CUSTOM_IMAGE_REPOSITORY" ]; then
    echo "TKG_CUSTOM_IMAGE_REPOSITORY variable is not defined"
    exit 1
fi

for TKG_BOM_FILE in "$BOM_DIR"/*.yaml; do

    # Get actual image repository from BoM file
    actualImageRepository=$(yq .imageConfig.imageRepository "$TKG_BOM_FILE" | tr -d '"')

    # Iterate through BoM file to create the complete Image name
    # and then pull, retag and push image to custom registry
    yq .images "$TKG_BOM_FILE" | jq -c '.[]' | while read -r i; do

        # Get imagePath and imageTag
        imagePath=$(jq .imagePath <<<"$i" | tr -d '"')
        imageTag=$(jq .tag <<<"$i" | tr -d '"')

        # create complete image names
        actualImage=$actualImageRepository/$imagePath:$imageTag
        customImage=$TKG_CUSTOM_IMAGE_REPOSITORY/library/$imagePath:$imageTag

        echo "docker pull $actualImage"
        echo "docker tag $actualImage $customImage"
        echo "docker push $customImage"
        echo ""
    done

done 
