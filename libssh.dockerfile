# Copyright 2021 Suresoft Technologies Inc.
# Licensed under the MIT
FROM hschoe/defects4cpp-ubuntu:18.04

RUN apt-smart -aq &&\
 apt-get install -y openssh-server libssl-dev libgcrypt-dev zlib1g zlib1g-dev libcmocka-dev &&\
 rm -rf /var/lib/apt/lists/*
