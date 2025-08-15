FROM jupyter/minimal-notebook:latest

USER root

# Install ffmpeg and curl
RUN apt-get update && \
    apt-get install -y ffmpeg curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER $NB_UID

CMD ["start.sh", "jupyter", "lab", "--LabApp.token=", "--LabApp.password="]
