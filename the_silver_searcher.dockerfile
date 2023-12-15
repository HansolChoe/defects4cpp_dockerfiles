# Copyright 2021 Suresoft Technologies Inc.
# Licensed under the MIT
FROM hschoe/defects4cpp-ubuntu:18.04

RUN apt-get update &&\
 apt-get install -y libpcre3-dev zlib1g-dev liblzma-dev &&\
 rm -rf /var/lib/apt/lists/*
 