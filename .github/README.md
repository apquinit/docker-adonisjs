# AdonisJs Docker Image

Docker image for AdonisJs applications.

## How to use

Pull the Docker image.

```bash
docker pull apquinit/adonisjs:1.0.0
```

Run the Docker image and create container.

```bash
docker run --name adonisjs adonisjs
```

### Volumes

The working directory inside the container is `/var/www` so to keep the application data, mount a directory onto that volume.

```bash
docker run --name adonisjs -v /path/to/app:/var/www apquinit/adonisjs:1.0.0
```

The working directory can be changed by passing the `-w` flag, make sure to update the mounted volume to preserve data.

```bash
docker run --name adonisjs -w /usr/app -v /path/to/app:/usr/app apquinit/adonisjs:1.0.0
```

### Custom application type

If the working directory is empty, the image will create a new adonis application in that directory

```bash
docker run --name adonisjs -v /path/to/app:/var/www -e "adonisFlags=--slim --yarn" apquinit/adonisjs:1.0.0
```

To see possible options, visit the [documentation](http://dev.adonisjs.com/docs/4.0/installation#_customizing_new_command).