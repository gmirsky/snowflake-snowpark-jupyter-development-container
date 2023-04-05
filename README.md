# Snowflake Snowpark Jupyter Container

This repository allows you to create a Python 3.8 Snowflake Snowpark containerized development environment.

## Prerequisites

Docker or Podman (aliased as docker) must be installed.

## Build the container

```shell
docker build -t snowpark-notebook:latest .
```

If using Podman to build the container use the following commands:

```shell
export BUILDAH_FORMAT=docker
podman build -t snowpark-notebook:latest .
```

## Run the container

Use one of the commands, depending upon the environment, to launch the container. Your current directory is where the container will store any files you create in the container.

### Linux/Mac Shell

```sh
docker run -it -p 8888:8888 -v "${PWD}":/home/jovyan/work snowpark-notebook:latest
```

### Windows Command Line (CLI)

```shell
docker run -it -p 8888:8888 -v %cd%:/home/jovyan/work snowpark-notebook:latest
```

### Powershell

```powershell
docker run -it -p 8888:8888 -v ${PWD}:/home/jovyan/work snowpark-notebook:latest
```

## Connect to the container

Use the URL output or paste the token into the URL below and then paste the URL into your browser.

```sh
http://localhost:8888/lab?token={token_written_in_the_console}
```
