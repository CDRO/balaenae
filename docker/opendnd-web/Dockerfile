FROM node:14-alpine

RUN mkdir /app
COPY package-lock.json /app
COPY index.js /app
RUN apk add git && \
    cd /app && \
    npm i && \
    apk del git

ENTRYPOINT ["node", "/app/index.js"]