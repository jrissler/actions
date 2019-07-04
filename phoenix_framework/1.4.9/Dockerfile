FROM elixir:1.9.0-alpine

LABEL "repository"="https://github.com/mrleeio/actions"
LABEL "homepage"="https://github.com/mrleeio/actions/phoenix_framework"
LABEL "maintainer"="Michael Lee <michael@mrlee.io>"

LABEL "com.github.actions.name"="Phoenix 1.4.9"
LABEL "com.github.actions.description"="An action for building Pheonix Framework projects"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="purple"

ARG MIX_HOME=/.mix
ENV MIX_HOME=$MIX_HOME
ARG MIX_ENV=dev
ENV MIX_ENV=$MIX_ENV
ARG PGDATA=/var/lib/postgresql/data
ENV PGDATA=$PGDATA

RUN mix local.rebar --force
RUN mix local.hex --force

RUN apk update && \
  apk add su-exec postgresql npm && \
  mkdir /docker-entrypoint-initdb.d && \
  rm -rf /var/cache/apk/* && \
  npm install -g npm@latest

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]