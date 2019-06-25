#!/bin/bash

set -eux
repo=${repo:-mtinny/ansible}
tag=${tag:-0.0.3}
ltag=${tag:-latest}
image="${repo}:${tag}"
limage="${repo}:${ltag}"

docker build -t ${image} .
docker push ${image}

docker tag ${image} ${limage}
docker push ${limage}
