#syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

RUN mkdir src
WORKDIR /src

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip3 install jupyter

COPY Running.ipynb Running.ipynb

CMD python3 -m notebook --port=8000 --ip=0.0.0.0 --allow-root --NotebookApp.token='' --NotebookApp.password=''