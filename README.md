# Install terraform 0.3.7.dev

```
brew cask install https://raw.githubusercontent.com/lalyos/terraform-bin/master/terraform.rb
```

## tl;dr

A couple of issues were fixed recently in [terraform](terraform.io):

- [providers/google: remove deprecated client secrets file](https://github.com/hashicorp/terraform/pull/884)
- [GCE ssh key insert as metadata fails after upgrading 0.35 to 0.36](https://github.com/hashicorp/terraform/issues/835)
- [GCE Error 400: Invalid value for field 'resource.metadata.items[1].key'](https://github.com/hashicorp/terraform/issues/757)

So a dev version: **0.3.7.dev** is compiled and uploaded to aws s3.

## build the Docker image

To build the base Docker image: **terra-bin**
```
curl https://raw.githubusercontent.com/lalyos/terraform-bin/master/Dockerfile | docker build -t terra-bin -
```

## release zipped terraform binaries for osx

create the latest binaries ziped in the current dir:
```
docker run -it -v $(pwd):/data terra-bin
```

## relese a specific git tag

```
docker run -it -v $(pwd):/data -e GIT_TAG=v0.3.6 terra-bin
```
