# Copyright 2021 Suresoft Technologies Inc.
# Licensed under the MIT
FROM hschoe/defects4cpp-ubuntu:18.04

ENV LC_ALL=C.UTF-8
ENV PYTHONENCODING=utf-8

RUN apt-get update &&\
 apt-get install -y clang ccache libxml2-utils libexpat1-dev g++-8 curl libz-dev libssh-dev libcurl4-openssl-dev libgtest-dev google-mock &&\
 rm -rf /var/lib/apt/lists/*
 
RUN cd /tmp &&\
  curl -LO https://github.com/google/googletest/archive/release-1.8.0.tar.gz &&\
  tar xzf   release-1.8.0.tar.gz &&\
  mkdir -p  googletest-release-1.8.0/build &&\
  cd     googletest-release-1.8.0/build &&\
  cmake .. ; make ; make install
