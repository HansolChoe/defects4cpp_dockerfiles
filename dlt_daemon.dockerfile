# Copyright 2021 Suresoft Technologies Inc.
# Licensed under the MIT
FROM hschoe/defects4cpp-ubuntu:18.04
   
RUN apt-get update &&\
 apt-get install --no-install-recommends -y zlib1g-dev libdbus-glib-1-dev &&\
 rm -rf /var/lib/apt/lists/*