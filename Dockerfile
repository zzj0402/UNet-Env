FROM ufoym/deepo:all-py36-jupyter
ENV TZ=Pacific/Auckland
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata \
    software-properties-common \
    curl \
    vim \
    htop \
    libgl1-mesa-glx
COPY ./requirements.txt ./
COPY ./unet.ipynb ./
RUN pip install -r requirements.txt