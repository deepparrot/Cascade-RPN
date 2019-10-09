#!/usr/bin/env bash
source /workspace/venv/bin/activate
PYTHON=${PYTHON:-"python"}

pip install torch

apt-get git
git clone https://github.com/NVIDIA/apex
cd apex
pip install -v --no-cache-dir ./
cd ..

git clone https://github.com/open-mmlab/mmdetection/
cd mmdetection

echo "Installing..."
$PYTHON setup.py develop
cd ..
