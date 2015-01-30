## build the Docker image

To build the base Docker image: **terra-bin**
```
curl https://gist.githubusercontent.com/lalyos/307cd3b2e6381ea9563f/raw/terra-bin-Dockerfile | docker build -t terra-bin -
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