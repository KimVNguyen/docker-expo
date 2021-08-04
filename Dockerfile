FROM node:latest

EXPOSE 19000 19001
RUN npm install -g expo-cli
RUN mkdir /code
WORKDIR /code
ADD . /code/
