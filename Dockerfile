FROM node:14-alpine as base

RUN mkdir /app
COPY package-lock.json /app/
RUN npm install -g opendnd
ENTRYPOINT ['dnd']
