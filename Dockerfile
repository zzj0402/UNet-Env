FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-devel
ENV TZ=Pacific/Auckland
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata \
    software-properties-common \
    curl \
    vim \
    htop \
    libgl1-mesa-glx
COPY ./requirements.txt ./
RUN pip install -r requirements.txt