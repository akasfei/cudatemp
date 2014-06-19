all:
	/usr/local/cuda/bin/nvcc -m64  -gencode arch=compute_10,code=sm_10 -gencode arch=compute_20,code=sm_20 -gencode arch=compute_30,code=sm_30 -gencode arch=compute_35,code=sm_35 -I/usr/local/cuda/include -I./common/inc -o matrixMul.o -c matrixMul.cu
	g++ -m64 -o matrixMul matrixMul.o -L/usr/local/cuda/lib64 -lcudart
