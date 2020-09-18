FROM ufoym/deepo:all-py36-jupyter
ENV TZ=Pacific/Auckland
RUN apt-get -y install libgl1-mesa-glx
COPY ./requirements.txt ./
COPY ./unet.ipynb ./
RUN pip install -r requirements.txt