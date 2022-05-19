FROM python:3.8.3-slim-buster
COPY . usr/src/app
WORKDIR /usr/src/app

RUN pip install -r requirements.txt
RUN pip install requests


CMD uvicorn --host 0.0.0.0 main:app --reload