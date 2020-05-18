#!/bin/bash

mkdir /tmp/artifacts

docker run hello-world

docker-compose -v > /tmp/artifacts/dc-version.log
