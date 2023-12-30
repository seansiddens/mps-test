.PHONY: clean

all: mps_test

mps_test:
	nvcc mps_test.cu -o mps_test

clean: 
	rm -f mps_test