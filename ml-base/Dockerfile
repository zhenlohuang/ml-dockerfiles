FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

LABEL maintainer="Zhenlong Huang <zhenlohuang@gmail.com>"
# ARG USER="zhenlohuang"
# ARG UID="1000"
# ARG GID="100"

COPY install /install

# Base scripts
RUN bash /install/install_aliyun_mirror.sh
RUN apt-get update --fix-missing

# Install core packages
RUN bash /install/install_core.sh

# Install utilities
RUN bash /install/install_utilities.sh

# Install Python
RUN bash /install/install_python.sh

# Install Python packages
RUN bash /install/install_python_packages.sh

# Install Tensorflow
RUN bash /install/install_tensorflow.sh

# Install Pytorch
RUN bash /install/install_pytorch.sh

# Install ONNX
RUN bash /install/install_onnx.sh

# Install Jupyter Lab
RUN bash /install/install_jupyter_lab.sh

# Install LLVM
RUN bash /install/install_llvm.sh

# Environment variables
ENV PATH=/usr/local/nvidia/bin:${PATH}
ENV PATH=/usr/local/cuda/bin:${PATH}
ENV CPLUS_INCLUDE_PATH=/usr/local/cuda/include:${CPLUS_INCLUDE_PATH}
ENV C_INCLUDE_PATH=/usr/local/cuda/include:${C_INCLUDE_PATH}
ENV LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/cuda/compact:${LIBRARY_PATH}
ENV LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/cuda/compact:${LD_LIBRARY_PATH}
