#!/bin/bash

IMAGE_NAME="ml-base:latest"
docker build -t ${IMAGE_NAME} -f Dockerfile .