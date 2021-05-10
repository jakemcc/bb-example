# bb-example

A very tiny example for experimenting with remote execution.

## What to do

```
# Spin up a very empty environment
host$ docker run -v $PWD:/src -w /src -ti ubuntu:latest bash

# Install bazelisk
docker-image$ ./install-bazelisk.sh

# Try build
docker-image$ bazel build --config=remote //src/...
```
