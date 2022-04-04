# OpenFAST Docker
This repository contains a Dockerfile for producing working installations of 
[OpenFAST](https://github.com/OpenFAST/openfast) in a python/conda-based docker image. Releases trigger a build of and
push to the [`octue/openfast`](https://hub.docker.com/r/octue/openfast) DockerHub repository. Each image tag matches the 
version number of the release, which in turn matches the version of OpenFAST installed in that image. The containers are
built for the `linux/amd64` platform.

## Installation
Running the following will get you an image with `openfast==3.1.0` installed:
```shell
docker pull octue/openfast:3.1.0
```

## Usage
To run openfast on files on your local machine, mount them while creating a new container from the image you pulled:
```shell
docker run -v /path/to/openfast-files:/data -it octue/openfast:3.1.0

openfast /data/main.fst
```
