#!/bin/bash

set -eux
repo=${repo:-mtinny/ansible}
tag=${tag:-0.0.2}
image="${repo}:${tag}"

docker build -t ${image} .
docker push ${image}

