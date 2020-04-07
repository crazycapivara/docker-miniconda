FROM crazycapivara/miniconda3-jupyter

LABEL maintainer="Stefan Kuethe <crazycapivara@gmail.com>"

USER root

COPY ./pandas.yml /pandas.yml

RUN conda env update -n base --file /pandas.yml --quiet \
  && conda clean -afy

USER hopefulhopper

