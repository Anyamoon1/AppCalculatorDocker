FROM ubuntu:22.04

RUN apt update && apt install -y python3 python3-pip
RUN pip install Flask

COPY . /

ENV APP_CALCULATOR_DOCKER=main
EXPOSE 8000
CMD flask --app main run --host 0.0.0.0 --port 8000
