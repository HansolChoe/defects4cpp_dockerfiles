# Copyright 2021 Suresoft Technologies Inc.
# Licensed under the MIT
FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
    
RUN apt-get update &&\
 apt-get install --no-install-recommends -y automake bear build-essential git lcov libtool\
 liblua5.3-dev lsb-release pkg-config perl python3-pip rename software-properties-common wget &&\
 rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.6 100

RUN pip3 install -U pip setuptools &&\
 pip3 install gcovr

RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null &&\
 apt-add-repository "deb https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" &&\
 apt-get install -y cmake

RUN useradd --uid 1001 --home-dir /home/workspace --shell /bin/bash defects4cpp &&\
 git config --global user.email "hschoe@suresofttech.com" &&\
 git config --global user.name "Hansol Choe"

WORKDIR /home/workspace