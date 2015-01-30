Here is the ome-liner process to build the osx (Darwin) binaries, with docker:

```
docker run  \
  -v $(pwd):/data \
  golang:1.4.1 \
  bash -vc 'curl -Lo /build.sh https://gist.githubusercontent.com/lalyos/307cd3b2e6381ea9563f/raw/terraform-binary-darwin.sh && . /build.sh '
```
