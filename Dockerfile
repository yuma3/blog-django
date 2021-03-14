FROM python:3

ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y \
    sudo \
    wget \ 
    vim \ 
    git 

WORKDIR /src

COPY requirements.txt /src/

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . /src/


