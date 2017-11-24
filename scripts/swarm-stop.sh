#!/bin/bash

# Stop nodes
echo "### Stoping nodes ..."
for c in {1..6} ; do
    docker-machine stop node$c
done

# Clean Docker client environment
echo "### Cleaning Docker client environment ..."
eval $(docker-machine env -u)