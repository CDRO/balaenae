FROM node:14-alpine as base

RUN mkdir /app
RUN npm install -g opendnd
ENTRYPOINT ['dnd']
