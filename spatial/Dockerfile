FROM crazycapivara/miniconda3-jupyter:pandas

LABEL maintainer="Stefan Kuethe <crazycapivara@gmail.com>"

USER root

COPY ./spatial.yml /spatial.yml

RUN conda env update -n base --file /spatial.yml --quiet \
  && conda clean -afy

USER hopefulhopper

