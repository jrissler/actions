FROM node:12.6.0-alpine

LABEL "repository"="https://github.com/mrleeio/actions"
LABEL "homepage"="https://github.com/mrleeio/actions/nodejs"
LABEL "maintainer"="Michael Lee <michael@mrlee.io>"

LABEL "com.github.actions.name"="NodeJS Latest"
LABEL "com.github.actions.description"="An action for building NodeJS projects"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="green"

ARG CI=true
ENV CI=$CI
ARG PGDATA=/var/lib/postgresql/data
ENV PGDATA=$PGDATA

RUN apk update && \
  apk add su-exec postgresql && \
  mkdir /docker-entrypoint-initdb.d && \
  rm -rf /var/cache/apk/* && \
  npm install -g npm@latest

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]