FROM debian:jessie64

MAINTAINER nirae

RUN apt-get -y update

RUN apt-get -y install build-essential valgrind bsdmainutils curl git-all

ENV APP_PATH /app
ENV MAKEFILE_DIR .
ENV	EXE .

RUN mkdir -p APP_PATH
WORKDIR $APP_PATH

COPY . .

CMD sh run_script.sh
