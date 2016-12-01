FROM continuumio/anaconda3:4.2.0

MAINTAINER Sotetsu KOYAMADA

# install
RUN pip install --upgrade pip
RUN pip install chainer==1.18.0

# jupyter notebook
RUN echo "/opt/conda/bin/jupyter notebook --notebook-dir=/work --ip='*' --port=8888 --no-browser" > /run_jupyter.sh
RUN chmod +x /run_jupyter.sh

VOLUME /work
WORKDIR /work
