FROM paperinik/rpi-ruby
MAINTAINER Bruno Cardoso Cantisano <bruno.cantisano@gmail.com>

ADD files/Gemfile Gemfile
ADD files/.gemrc .gemrc

RUN apt-get update \
    && apt-get install build-essential libsqlite3-dev \
    && gem install bundler \
    && /bin/bash -c "bundle install"

ENV HOME /home
WORKDIR /home
