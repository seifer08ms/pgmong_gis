#!/bin/sh
VER=${1:-2.11.0}
downlib=${2:-false }
if [ "$downlib" = true ];then 
    ./download.sh $VER
fi
docker build --build-arg GS_VERSION=$VER -t seifer08ms/geoserver:$VER  .
