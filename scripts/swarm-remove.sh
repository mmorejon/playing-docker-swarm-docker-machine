#!/bin/bash

# Clean Docker client environment
echo "### Cleaning Docker client environment ..."
eval $(docker-machine env -u)

# Remove nodes
echo "### Removing nodes ..."
for c in {1..6} ; do
    docker-machine rm node$c --force
done