FROM continuumio/miniconda3

LABEL maintainer="<crazycapivara@gmail.com>"

RUN conda install jupyter -y
# --quiet

EXPOSE 8888

RUN useradd hopefulhopper --create-home --shell /bin/bash \
  && echo hopefulhopper:hopefulhopper | chpasswd \
  && usermod -a -G staff hopefulhopper

WORKDIR /home/hopefulhopper

USER hopefulhopper

RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc \
  && echo "conda activate base" >> ~/.bashrc

CMD [ "jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser" ]

