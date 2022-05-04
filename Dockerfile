FROM jupyter/tensorflow-notebook:ubuntu-20.04
USER root
RUN apt update && apt install -y curl
# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID