eval (python -m virtualfish projects)
set -xg PYTHONPATH "/home/lechnerml/sw/tensorflow-models:/home/lechnerml/sw/tensorflow-models/research/:/home/lechnerml/sw/tensorflow-models/research/slim/nets:/home/lechnerml/sw/tensorflow-models/research/slim/"
set -xg MAKEFLAGS -j56

# Intel MKL and IPP
set -xg CMAKE_PREFIX_PATH $CMAKE_PREFIX_PATH /opt/intel/compilers_and_libraries/linux/mkl/lib/intel64
set -xg CMAKE_PREFIX_PATH $CMAKE_PREFIX_PATH /opt/intel/compilers_and_libraries/linux/ipp

# New Intel MKL file layout
#export BLA_VENDOR=Intel10_64lp

# Ensure OpenCV uses Intel IPP
set -xg OPENCV_IPP_PATH /opt/intel/compilers_and_libraries/linux/ipp/
#set -xg LIB /opt/intel/compilers_and_libraries/linux/ipp/lib/intel64 $LIB

# Look for OpenCV in the projects directory first
set -xg CMAKE_PREFIX_PATH $CMAKE_PREFIX_PATH


# CUDA force usage of gcc <= 6
set -xg CUDA_NVCC_FLAGS -ccbin 6.0

set -xg LD_LIBRARY_PATH "/home/lechnerml/sw/SuiteSparse/lib/:/opt/cuda-9.0/lib64/:/home/lechnerml/sw/opencv2.4/bin/lib"

powerline-daemon -q
set POWERLINE_BASH_CONTINUATION 1
set POWERLINE_BASH_SELECT 1
set fish_function_path $fish_function_path "/usr/lib/python3.7/site-packages/powerline/bindings/fish"
powerline-setup
