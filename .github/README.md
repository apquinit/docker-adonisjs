# AdonisJs Docker Image

[![Build Status](https://travis-ci.org/apquinit/docker-adonisjs.svg?branch=master)](https://travis-ci.org/apquinit/docker-adonisjs)

Docker image for AdonisJs applications.

## Installation

Pull the Docker image.

```bash
docker pull apquinit/adonisjs:latest
```

Run the Docker image and create container.

```bash
docker run --name adonisjs adonisjs
```

### Volumes

The working directory inside the container is `/home/node/app` so to keep the application data, mount a directory onto that volume.

```bash
docker run --name adonisjs -v /path/to/app:/home/node/app apquinit/adonisjs:latest
```

The working directory can be changed by passing the `-w` flag, make sure to update the mounted volume to preserve data.

```bash
docker run --name adonisjs -w /usr/app -v /path/to/app:/usr/app apquinit/adonisjs:latest
```

### Custom Application Type

If the working directory is empty, the image will create a new adonis application in that directory.

```bash
docker run --name adonisjs -v /path/to/app:/home/node/app -e "adonisFlags=--slim --yarn" apquinit/adonisjs:latest
```

To see possible options, visit the [documentation](http://dev.adonisjs.com/docs/4.0/installation#_customizing_new_command).