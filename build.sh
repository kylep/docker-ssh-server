#!/usr/bin/env bash
# build.sh

# accept docker tag as positional argument, else use latest
tag=latest
if [[ "$1" != "" ]]; then
    tag="$1"
fi

docker build --tag ssh-server:$tag .
