#!/bin/bash
docker run --name docker-postgisview -itd -p 4000:4000 -v $PWD/.env:/postgis-preview/.env   seifer08ms/postgis-preview
