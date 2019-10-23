FROM pytorch/pytorch

RUN mkdir /app

WORKDIR /app

RUN conda install -y keras

RUN conda install -c conda-forge tqdm==4.31.0

RUN pip install torch==1.0.1.post2

RUN conda skeleton pypi autokeras

RUN conda build autokeras

RUN conda install --use-local autokeras
