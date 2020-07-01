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
# Script install harbor and generate certs user by harbor and docker.
#
# Mustafa mbayramo@vmware.com
#

# pull latest compose
VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | jq .name -r)
DESTINATION=/usr/local/bin/docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/"${VERSION}"/docker-compose-$(uname -s)-$(uname -m) -o $DESTINATION
sudo chmod 755 $DESTINATION

# where is harbo distro
HARBOR_BASE=/root/harbor
# where you want to put certs
HARBOR_CERT_BASE=/data/cert
# docker cets
DOCKER_CERT=/etc/docker/certs.d
# harbor default pass
HARBOR_PASS="VMware1!"
# server fqdn
FQDN=harbor.vmwarelab.edu
# host without domain
FQDN_HOST=$(echo ${FQDN} | cut -d"." -f1)
# ca default key name
CA_KEY=ca.key
# ca default cert name
CA_CRT=ca.crt
# array hold all IP you want to add to a cert
IP_ADDR=(172.16.254.56 192.168.254.56)
IPS=""

for i in "${!IP_ADDR[@]}"; do
  IPS+="IP.$((i+1))=${IP_ADDR[$i]}"
  IPS+=$'\n'
done

if [ ! -f ${HARBOR_BASE}/harbor.yml.tmpl ]; then
   echo "Harbor dir has not template ${HARBOR_BASE}/harbor.yml"; exit 2;
fi

is_valid_docker=false
default_certd="certs.d"
if [[ "$DOCKER_CERT" == *"$default_certd"* ]]; then
  echo is_valid_docker=true 
fi

is_regen=false

#generate 
cat > v3.ext <<-EOF
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
extendedKeyUsage = serverAuth
subjectAltName = @alt_names
[alt_names]
DNS.1=${FQDN}
DNS.2=${FQDN_HOST}
${IPS}
EOF

# generate ca cert and back old one
if test -f "${CA_KEY}"; then
  cp ${CA_KEY} ${CA_KEY}.backup
else
  is_regen=true
fi

if test -f "${CA_CRT}"; then
  cp ${CA_CRT} ${CA_CRT}.backup
else 
    is_regen=true
fi

if $is_regen ; then
        openssl genrsa -out ${CA_KEY} 4096
        if [ ! -f ${CA_KEY}.csr ]; then
                echo "Failed generate ca private key"; exit 2;
        fi

        openssl req -x509 -new -nodes -sha512 -days 3650 \
                 -subj "/C=US/ST=PaloALto/L=PaloAto/O=VMware/OU=Personal/CN=${FQDN}" \
                 -key ${CA_KEY} \
                 -out ${CA_CRT}

        if [ ! -f ${CA_CRT}.csr ]; then
                echo "Failed generate ca cert request"; exit 2;
        fi
fi

# harbor server cert
openssl genrsa -out ${FQDN} 4096
if [ ! -f ${FQDN}.key ]; then
  echo "failed generate ca key ${FQDN}.key check openssl tool"; exit 2;
fi

openssl req -sha512 -new \
    -subj "/C=US/ST=PaloAlto/L=PaloAlto/O=VMware/OU=Personal/CN=${FQDN}" \
    -key ${FQDN}.key \
    -out ${FQDN}.csr

if [ ! -f ${FQDN}.csr ]; then
  echo "failed generate cert request"; exit 2;
fi

openssl x509 -req -sha512 -days 3650 \
    -extfile v3.ext \
    -CA ${CA_CRT} -CAkey ${CA_KEY} -CAcreateserial \
    -in ${FQDN}.csr \
    -out ${FQDN}.crt

cp ${FQDN}.crt ${HARBOR_CERT_BASE}/
cp ${FQDN}.key ${HARBOR_CERT_BASE}/

openssl x509 -inform PEM -in ${FQDN}.crt -out ${FQDN}.cert

### create dir if need for harbor cert location 
if [[ -d $HARBOR_CERT ]]; then
       echo "Re-generating certs"
       rm -rf "${HARBOR_CERT}"
       mkdir -p "${HARBOR_CERT}"
else
       echo "Creating ${HABOR_CERT}"
       mkdir -p "${HARBOR_CERT}"
fi

#### regenerate certs in docker certs.d and copy new certs
DOCKER_CERT_DIR=${DOCKER_CERT}/${FQDN}
if [[ -d $DOCKER_CERT_DIR ]]; then
     echo "Regenerating cert for docker /etc/docker/certs.d";
     rm -rf $DOCKER_CERT_DIR;
fi

mkdir -p $DOCKER_CERT_DIR
cp ${FQDN}.key  ${DOCKER_CERT_DIR}/
cp ${FQDN}.cert ${DOCKER_CERT_DIR}/
cp ${FQDN}.crt  ${DOCKER_CERT_DIR}/

# ubuntu fix
# Certificates are added to the CA certificate database using the update-ca-certificates command. 
cp /data/cert/${CA_CRT}.crt /usr/local/share/ca-certificates/${CA_CRT}.crt
cp /data/cert/${FQDN}.crt /usr/local/share/ca-certificates/${FQDN}.crt
update-ca-certificates

# restart docker 
service docker restart
DOCKER_RUNNING=$(systemctl is-active --quiet service)
[[ ! -z "$DOCKER_RUNNING" ]] && { echo "Error: failed restart docker."; exit 1; }

echo "Installing Harbor";
${HARBOR_BASE}/.harbor.yml.tmpl $HARBOR_BASE/harbor.yml
sed -i \'/certificate/s/"${DOCKER_CERT_FILE}"/g\' HARBOR_BASE/harbor.yml
sed -i \'/private_key/s/"${DOCKER_KEY_FILE}"/g\' HARBOR_BASE/harbor.yml
sed -i \'/harbor_admin_password/s/"${HARBOR_PASS}"/g\' HARBOR_BASE/harbor.yml
$HARBOR_BASE/install.sh

