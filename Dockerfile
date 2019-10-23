FROM pytorch/pytorch

RUN mkdir /app

WORKDIR /app

RUN conda install -y keras

RUN conda install -c conda-forge tqdm

RUN pip install torch

RUN conda skeleton pypi autokeras

RUN conda build autokeras

RUN conda install --use-local autokeras
