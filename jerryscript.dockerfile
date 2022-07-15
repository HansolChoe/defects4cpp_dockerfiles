# Copyright 2021 Suresoft Technologies Inc.
# Licensed under the MIT
FROM hschoe/defects4cpp-ubuntu:18.04

ENV LC_ALL=C.UTF-8
ENV PYTHONENCODING=utf-8

RUN apt-get update &&\
 apt-get install -y cppcheck clang-format-10 libssl-dev libc6-dev-i386 &&\
 rm -rf /var/lib/apt/lists/*
