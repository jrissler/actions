FROM elixir:1.9.0-alpine

LABEL "repository"="https://github.com/mrleeio/actions"
LABEL "homepage"="https://github.com/mrleeio/actions/mix"
LABEL "maintainer"="Michael Lee <michael@mrlee.io>"

LABEL "com.github.actions.name"="Elixir 1.9.0 mix"
LABEL "com.github.actions.description"="An action for running Elixir mix commands"
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
  apk add su-exec postgresql && \
  mkdir /docker-entrypoint-initdb.d && \
  rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]