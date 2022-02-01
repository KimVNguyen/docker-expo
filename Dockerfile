FROM node:lts
ARG USR=node

#Does all the things we need to do as root
RUN apt-get update 
RUN apt-get install sudo 
RUN usermod -aG sudo $USR 
RUN echo "$USR ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers 
RUN mkdir /code 
RUN chown -R $USR:$USR /code/ 
RUN npm install -g expo-cli

USER $USR:$USR 
WORKDIR /code
ADD . /code/