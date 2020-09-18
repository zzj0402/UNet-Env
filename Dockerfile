FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-devel
ENV TZ=Pacific/Auckland
RUN apt-get -y install libgl1-mesa-glx
COPY ./requirements.txt ./
COPY ./unet.py ./
RUN pip install -r requirements.txt