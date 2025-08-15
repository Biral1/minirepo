# Use the official Jupyter minimal notebook image
FROM jupyter/minimal-notebook:latest

# Install curl (usually already included, but just in case)
USER root
RUN apt-get update && apt-get install -y curl && apt-get clean && rm -rf /var/lib/apt/lists/*

USER $NB_UID

# Start JupyterLab (default command)
CMD ["start.sh", "jupyter", "lab", "--LabApp.token=''", "--LabApp.password=''"]
