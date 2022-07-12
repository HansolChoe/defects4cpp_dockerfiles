# Copyright 2021 Suresoft Technologies Inc.
# Licensed under the MIT
FROM hschoe/defects4cpp-ubuntu:18.04

RUN apt-get update &&\
 apt-get install -y git-core libssl-dev libx11-dev libxext-dev libxinerama-dev libxcursor-dev libxkbfile-dev libxv-dev libxi-dev libxdamage-dev libxrender-dev libxrandr-dev libasound2-dev libcups2-dev libpulse-dev libavutil-dev libavcodec-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev &&\
 rm -rf /var/lib/apt/lists/*
 