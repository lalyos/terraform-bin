FROM golang:1.4.1

RUN apt-get update && \
    apt-get install -y zip

ENV XC_ARCH amd64
ENV XC_OS darwin

RUN go get github.com/mitchellh/gox && \
    gox -build-toolchain -arch=$XC_ARCH -os=$XC_OS

RUN go get -u github.com/hashicorp/terraform
WORKDIR src/github.com/hashicorp/terraform/
RUN make updatedeps

VOLUME /data

RUN echo 'cd /go/src/github.com/hashicorp/terraform/ && make bin && cd pkg/${XC_OS}_${XC_ARCH} && version=$(terraform --version|grep "^Terraform"| cut -d " " -f 2) && zip /data/terraform_${version}_darwin_amd64.zip terraform*' > /build && \
    chmod +x /build
    
RUN /build