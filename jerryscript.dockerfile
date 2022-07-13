# Copyright 2021 Suresoft Technologies Inc.
# Licensed under the MIT
FROM hschoe/defects4cpp-ubuntu:18.04

RUN apt-get update &&\
 apt-get install -y cppcheck clang-format-10 libssl-dev &&\
 rm -rf /var/lib/apt/lists/*
 