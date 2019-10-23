FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-runtime

COPY install_autokeras.sh /tmp/

RUN mkdir /app

WORKDIR /app

RUN conda install -y keras

RUN bash /tmp/install_autokeras.sh
