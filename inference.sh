#!/bin/bash

CUDA_VISIBLE_DEVICES=1 ./docker_run.sh bash -c 'cd tools; python eval_rcnn.py --cfg_file cfgs/default.yaml --eval_mode rcnn --test --ckpt ../weights/rcnn_epoch_70.pth --batch_size 6'
