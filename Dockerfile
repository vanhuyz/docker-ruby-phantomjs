FROM ruby:2.3.0

MAINTAINER vanhuyz

ENV PHANTOMJS_VERSION 2.1.1

RUN \
  apt-get update && \
  cd /tmp && \
  wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
  tar xjf phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
  mv /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/bin/phantomjs /usr/local/bin && \
  rm phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
  rm -r phantomjs-$PHANTOMJS_VERSION-linux-x86_64
