FROM node:9
USER root

WORKDIR /home/node/app
ADD . /home/node/app

RUN apt update && apt install python-pip -y
RUN pip install https://github.com/google/closure-linter/zipball/master

RUN npm install
