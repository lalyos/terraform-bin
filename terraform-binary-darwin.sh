#!/bin/bash

apt-get update && apt-get install -y zip

go get -u github.com/hashicorp/terraform
cd src/github.com/hashicorp/terraform/
make updatedeps

export XC_ARCH=amd64 XC_OS="darwin"
gox -build-toolchain -arch=$XC_ARCH -os=$XC_OS

make bin
cd cd pkg/${XC_OS}_${XC_ARCH}
version=$(terraform --version|grep "^Terraform"| cut -d " " -f 2)
zip /data/terraform_${version}_darwin_amd64.zip terraform*