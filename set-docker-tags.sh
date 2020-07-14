#!/bin/bash

if [[ "$TRAVIS_BRANCH" == "master" ]]; then
  export DOCKER_TAG="latest"
fi

if test -n "$TRAVIS_TAG"
then
  export DOCKER_TAG="${TRAVIS_TAG}"
fi

if test -z "$DOCKER_TAG"
then
  echo "Missing docker tag"
  exit 1
else
  echo "Using docker tag: ${DOCKER_TAG}"
fi
