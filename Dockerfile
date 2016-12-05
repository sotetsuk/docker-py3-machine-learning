FROM continuumio/anaconda3:4.2.0

MAINTAINER Sotetsu KOYAMADA

# install
RUN apt-get install cmake make vi -y
RUN pip install -r requirements.txt

# jupyter notebook
RUN echo "/opt/conda/bin/jupyter notebook --notebook-dir=/work --ip='*' --port=8888 --no-browser" > /run_jupyter.sh
RUN chmod +x /run_jupyter.sh

VOLUME /work
WORKDIR /work
