# Copyright 2021 Suresoft Technologies Inc.
# Licensed under the MIT
FROM hschoe/defects4cpp-ubuntu:18.04

ENV LC_ALL=C.UTF-8
ENV PYTHONENCODING=utf-8

RUN apt-get update &&\
 apt-get install -y zlib1g-dev python3-dev freeglut3-dev libegl1-mesa-dev libx11-dev libxext-dev libxrender-dev libxtst-dev libxt-dev libfltk1.3-dev libfltk1.3-dev &&\
 rm -rf /var/lib/apt/lists/*
