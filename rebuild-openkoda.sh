#!/bin/sh

# Clone Openkoda
DIR="openkoda"
if [ ! -d "$DIR" ]; then
  git clone git@github.com:openkoda/openkoda.git
fi

docker compose build --no-cache openkoda