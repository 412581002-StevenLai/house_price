# base image: nvidia/cuda:12.2.0-runtime-ubuntu22.04
#FROM nvidia/cuda:12.2.0-runtime-ubuntu22.04
FROM pytorch/pytorch:2.3.0-cuda12.1-cudnn8-runtime
#RUN apt update && apt upgrade -y 
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*
#RUN apt install python3 
RUN pip install --no-cache-dir \
    scikit-learn \
    pandas \
    numpy \
    notebook \
    jupyterlab \
    matplotlib
RUN useradd -m user
USER user
# Set the working directory
WORKDIR /app

# Copy any local files into the container
#COPY . /app

# Expose port 8888 for Jupyter Notebook
EXPOSE 8888

# Set the default command to start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]