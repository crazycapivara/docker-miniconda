FROM continuumio/miniconda3

LABEL maintainer="<crazycapivara@gmail.com>"

RUN /opt/conda/bin/conda install jupyter -y --quiet \
	&& mkdir /opt/notebooks

EXPOSE 8888

# remove auth
RUN /opt/conda/bin/jupyter notebook --allow-root --generate-config \
	&& echo "c.NotebookApp.token = ''" >> ~/.jupyter/jupyter_notebook_config.py

CMD ["/opt/conda/bin/jupyter",  "notebook",  "--notebook-dir=/opt/notebooks",  "--ip='*'",  "--allow-root", "--port=8888",  "--no-browser"]

