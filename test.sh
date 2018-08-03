#!/usr/bin/env bash

docker run --rm -it \
    -v $PWD:/tmp/$(basename "${PWD}"):ro \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -w /tmp/$(basename "${PWD}") \
    retr0h/molecule:latest \
    sudo molecule test
