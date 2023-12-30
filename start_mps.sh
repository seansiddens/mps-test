#!/bin/bash
# The following must be performed with root privilege
nvidia-smi -i 0 -c EXCLUSIVE_PROCESS
nvidia-cuda-mps-control -d
