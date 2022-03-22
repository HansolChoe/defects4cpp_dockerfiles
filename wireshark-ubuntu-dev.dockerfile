# Copyright 2021 Suresoft Technologies Inc.
# Licensed under the MIT
FROM wireshark/wireshark-ubuntu-dev

ENV DEBIAN_FRONTEND=noninteractive
    
RUN apt-get update &&\
 apt-get install --no-install-recommends -y python3-pip &&\
 rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 100

RUN pip3 install -U pip setuptools &&\
 pip3 install apt-smart &&\
 pip3 install gcovr

RUN apt-smart -aq &&\
 apt-get install --no-install-recommends -y python3-pip wget bear lsb-release software-properties-common &&\
 wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null &&\
 apt-add-repository "deb https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" &&\
 apt-get install -y cmake &&\
 rm -rf /var/lib/apt/lists/*

RUN useradd --uid 1001 --home-dir /home/workspace --shell /bin/bash defects4cpp &&\
 git config --global user.email "hschoe@suresofttech.com" &&\
 git config --global user.name "Hansol Choe" &&\
 addgroup wireshark &&\
 adduser defects4cpp wireshark

WORKDIR /home/workspace