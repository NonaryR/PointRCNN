#!/bin/bash

# docker run --runtime=nvidia \
docker run -u $(id -u):$(id -g) --runtime=nvidia \
    -e CUDA_VISIBLE_DEVICES \
    --shm-size 12G \
    -v `pwd`:/app \
    -v `readlink -f ../data/kitti_test_front_only`:/app/data/KITTI/object/testing \
    --rm \
    -it point_rcnn "$@"

