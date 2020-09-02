FROM node:14-alpine

RUN apk add git && yarn global add opendnd && apk del git

ENTRYPOINT ['dnd']
