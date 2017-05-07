# alpine-node-yarn
Minimal Docker image for running Node.js and Yarn, built on Alpine Linux.

Available from the the Docker Hub regsitry as [nickdecooman/alpine-node-yarn](https://hub.docker.com/r/nickdecooman/alpine-node-yarn/)

## Versions

- `latest`, `7.10.0-onbuild` - 59.1 MB
- `v7.2.0-onbuild` – 96.8 MB

## Requirements

* `build.sh` - script that is executed upon building the image. This is typically where you want to run `npm install` and perform additional cleanup
* `up.sh` - script that is executed upon launching the container. Here you typically launch your Node.js application, for instance `node server`
