FROM node:14 as base

RUN mkdir /app
RUN yarn global add opendnd

FROM node:14-alpine
COPY --from=base /usr/local/share/.config /usr/local/share/.config
RUN ln -s /usr/local/share/.config/yarn/global/node_modules/.bin/dnd /usr/local/bin/dnd
ENTRYPOINT ['dnd']
