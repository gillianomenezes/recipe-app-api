FROM python:3.7-alpine
MAINTAINER Gilliano Menezes

ENV PYTHONUNBUFFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app 
WORKDIR /app
COPY ./app /app

RUN adduser -D gilliano
USER gilliano
