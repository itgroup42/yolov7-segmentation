FROM nvcr.io/nvidia/pytorch:22.06-py3

ARG DEBIAN_FRONTEND=noninteractive

# OpenCV dependencies
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

# Copy the rest of the code
COPY ./requirements.txt ./requirements.txt

# Install dependencies
RUN pip install -r requirements.txt