FROM node:14-alpine

RUN apk add git && yarn global add opendnd && apk del git

RUN /usr/local/bin/dnd
ENTRYPOINT "/bin/sh" "-c" "/usr/local/bin/dnd"
CMD ['dnd']
