FROM python:3.7-alpine
MAINTAINER Pollexe Co.

ENV PYTHONUNBUFFERED 1

COPY ./requrements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app

COPY ./app /app

RUN adduser -D user
USER user