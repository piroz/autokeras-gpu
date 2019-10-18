FROM nvidia/cuda:10.0-cudnn7-runtime

RUN mkdir /app

WORKDIR /app

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
    gcc \
    build-essential \
    python3-setuptools \
    python3-pip \
    && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip

RUN pip3 install keras

RUN pip3 install numpy

RUN pip3 install autokeras
