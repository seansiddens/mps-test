#!/bin/bash
make

# UUIDs of the MIG instances.
INSTANCE0="MIG-f67bc5ed-9221-5fe1-9e76-19871d78e46d"
INSTANCE1="MIG-94545bbf-0b34-53e1-af46-db2eea2d9595"

ITERATIONS=10000000

CUDA_VISIBLE_DEVICES=$INSTANCE0 ./mps_test --busy $ITERATIONS &
CUDA_VISIBLE_DEVICES=$INSTANCE1 ./mps_test --busy $ITERATIONS &

# Wait for both processes to finish.
wait



