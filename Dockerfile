FROM node:16-alpine

WORKDIR /usr/src/app


COPY ./package.json /usr/src/app/package.json

CMD npm install

COPY ./public /usr/src/app/public
COPY ./src /usr/src/app/src
COPY ./Dockerfile /usr/src/app/Dockerfile
COPY ./heroku.yml /usr/src/app/heroku.yml
COPY ./README.md /usr/src/app/README.md
COPY ./.gitignore /usr/src/app/.gitignore
