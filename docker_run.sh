#!/bin/bash

# docker run --runtime=nvidia \
docker run -u $(id -u):$(id -g) --runtime=nvidia \
    -e CUDA_VISIBLE_DEVICES \
    --shm-size 12G \
    -v `pwd`:/app \
    -v `readlink -f ../data`:/app/data \
    -v `readlink -f ../data/kitti_orig_dataset`:/app/data/kitti \
    --rm \
    -it point_rcnn "$@"

