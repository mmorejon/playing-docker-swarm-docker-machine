#!/bin/bash

# Start nodes
echo "### Starting nodes ..."
for c in {1..6} ; do
    docker-machine start node$c
done

# Clean Docker client environment
echo "### Cleaning Docker client environment ..."
eval $(docker-machine env -u)