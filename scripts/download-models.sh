#!/usr/bin/env bash

if [ "$(git rev-parse --show-toplevel)" != "$PWD" ]; then
  echo "invoke from repo root"
  exit 1
fi

file1="caffemodels/VGG_ILSVRC_16_layers.caffemodel"
file2="caffemodels/VGG_ILSVRC_16_layers_deploy.prototxt"

if [ ! -e "$file1" ]; then
  echo "$file1 doesn't exist, downloading..."
  curl -o caffemodels/VGG_ILSVRC_16_layers.caffemodel https://www.robots.ox.ac.uk/~vgg/software/very_deep/caffe/VGG_ILSVRC_16_layers.caffemodel
else
  echo "$file1 already exists, no action necessary."
fi

if [ ! -e "$file2" ]; then
  echo "$file2 doesn't exist, downloading..."
  curl -o caffemodels/VGG_ILSVRC_16_layers_deploy.prototxt https://gist.githubusercontent.com/ksimonyan/211839e770f7b538e2d8/raw/ded9363bd93ec0c770134f4e387d8aaaaa2407ce/VGG_ILSVRC_16_layers_deploy.prototxt
else
  echo "$file2 already exists, no action necessary."
fi
