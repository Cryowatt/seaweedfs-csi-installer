#!/bin/bash -ex

PLATFORM=$(docker system info --format '{{.OSType}}/{{.Architecture}}')
./build.sh ${REGISTRY:-cryowatt} ${PLUGIN_VERSION} ${PLUGIN_VERSION} seaweedfs-csi ${PLATFORM}