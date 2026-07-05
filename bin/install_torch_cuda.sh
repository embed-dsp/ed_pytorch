#!/bin/bash

# Copyright (c) 2026 embed-dsp, All Rights Reserved.
# Author: Gudmundur Bogason <gb@embed-dsp.com>


# ----------------------------------------
# Initialize Python Environment
# ----------------------------------------
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip list
python3 -m pip install --upgrade pip


# ----------------------------------------
# Install PyTorch
# ----------------------------------------
# NOTE: NVIDIA GeForce RTX 5060 requires CUDA >= 12.8
# NOTE: NVIDIA GeForce GTX 1050 requires CUDA <= 12.6

# Cuda 13.0
python3 -m pip install torch --index-url https://download.pytorch.org/whl/cu130
python3 -m pip install torchaudio --index-url https://download.pytorch.org/whl/cu130
python3 -m pip install torchvision --index-url https://download.pytorch.org/whl/cu130

# Cuda 12.8 
# python3 -m pip install torch --index-url https://download.pytorch.org/whl/cu128
# python3 -m pip install torchaudio --index-url https://download.pytorch.org/whl/cu128
# python3 -m pip install torchvision --index-url https://download.pytorch.org/whl/cu128

# Cuda 12.6
#python3 -m pip install torch --index-url https://download.pytorch.org/whl/cu126
#python3 -m pip install torchaudio --index-url https://download.pytorch.org/whl/cu126
#python3 -m pip install torchvision --index-url https://download.pytorch.org/whl/cu126


# --------------------
# Verify the GPU setup
# --------------------
python3 -c "import torch; print(torch.__version__); print(torch.cuda.is_available())"

# 2.12.0+cu130
# True


# ----------------------------------------
# Install TensorBoard
# ----------------------------------------
# https://setuptools.pypa.io/en/stable/history.html#v82-0-0

# NOTE: This version includes "pkg_resources"
python3 -m pip install setuptools==81.0.0

python3 -m pip install tensorboard


# ----------------------------------------
# Install extra Python Tools
# ----------------------------------------
python3 -m pip install matplotlib
python3 -m pip install numpy
python3 -m pip install scipy
python3 -m pip install pandas
python3 -m pip install scikit-learn
