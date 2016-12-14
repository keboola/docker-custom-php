#!/bin/bash

docker login -u="$QUAY_USERNAME" -p="$QUAY_PASSWORD" quay.io
docker tag keboola/docker-custom-php quay.io/keboola/docker-custom-php:$TRAVIS_TAG
docker tag keboola/docker-custom-php quay.io/keboola/docker-custom-php:latest
docker images
docker push quay.io/keboola/docker-custom-php:$TRAVIS_TAG
docker push quay.io/keboola/docker-custom-php:latest
