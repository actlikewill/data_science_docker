FROM continuumio/anaconda3

RUN apt-get update && apt-get install -y libgtk2.0-dev && \
    rm -rf /var/lib/apt/lists/*

RUN /opt/conda/bin/conda install jupyter -y --quiet

# Jupyter Port
EXPOSE 8888 

CMD ["jupyter", "notebook", "--notebook-dir=/notebooks", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]


