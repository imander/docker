FROM ruby:2.7.2

RUN apt-get update && apt-get install -y \
  redis-server \
  libsqlite3-dev \
  zlib1g-dev \
  git

RUN git clone https://github.com/dradis/dradis-ce.git

WORKDIR ./dradis-ce

#Clearly some hacks here to get things to work
RUN \
  sed -i 's|git@\([^:]\+\):|https://\1/|' Gemfile* && \
  ruby bin/setup && \
  bundle exec thor dradis:reset || bundle exec thor dradis:reset

ENTRYPOINT ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
