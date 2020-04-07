FROM crazycapivara/miniconda3-jupyter

LABEL maintainer="Stefan Kuethe <crazycapivara@gmail.com>"

USER root

COPY ./requirements.txt /requirements.txt

RUN conda install --file /requirements.txt -y --quiet \
  && conda clean -afy \
  && rm /requirements.txt

USER hopefulhopper

