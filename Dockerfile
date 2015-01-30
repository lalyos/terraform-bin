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

ADD https://raw.githubusercontent.com/lalyos/terraform-bin/master/build /build
RUN chmod +x /build

CMD /build
