
FROM pytorch/pytorch:1.3-cuda10.1-cudnn7-devel

WORKDIR /app

# RUN apt update
# RUN apt install -y vim mc

COPY requirements.txt /app/requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

ENV HOME /app

