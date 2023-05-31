#!/bin/bash

set -e -o pipefail

docker build . --tag dsboulder/dhaka-tile-resource
docker push dsboulder/dhaka-tile-resource