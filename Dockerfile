FROM ruby:2.2.3

MAINTAINER vanhuyz

RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc

ENV PHANTOMJS phantomjs-1.9.8-linux-x86_64

RUN \
  apt-get update && \
  apt-get install -y build-essential chrpath libssl-dev libxft-dev && \
  apt-get install -y libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev && \
  apt-get install -y nodejs npm && \
  npm install -g bower && \
  ln -s /usr/bin/nodejs /usr/bin/node && \
  wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2 && \
  tar xvjf $PHANTOMJS.tar.bz2 && \
  mv $PHANTOMJS /usr/local/share && \
  ln -sf /usr/local/share/$PHANTOMJS/bin/phantomjs /usr/local/bin
