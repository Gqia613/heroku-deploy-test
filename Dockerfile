FROM node:16-alpine

WORKDIR /usr/src/app

COPY ./package.json /usr/src/app/

CMD npm install
