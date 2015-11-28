FROM ruby:2.2.3

MAINTAINER vanhuyz

RUN \
  apt-get update && \
  apt-get install -y build-essential g++ flex bison gperf perl \
                     libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
                     libpng-dev libjpeg-dev python libx11-dev libxext-dev && \
  wget https://github.com/ariya/phantomjs/archive/2.0.0.tar.gz && \
  tar xzvf  2.0.0.tar.gz && \
  cd phantomjs-2.0.0  && \
  ./build.sh --confirm && \
  mv /phantomjs-2.0.0/bin/phantomjs /usr/local/bin && \
  cd / && \
  rm 2.0.0.tar.gz && \
  rm -r phantomjs-2.0.0
