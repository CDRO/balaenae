FROM node:14-alpine

RUN apk add git && npm i -g opendnd && apk del git

RUN /usr/local/bin/dnd
ENTRYPOINT ["/usr/local/bin/dnd"]
CMD ["help"]
