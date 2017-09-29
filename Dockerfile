FROM ubuntu:16.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update
RUN apt-get install -y cmake
RUN apt-get install -y gcc
RUN apt-get install -y git

RUN apt-get install -y python2.7
RUN ln -s /usr/bin/python2.7 /usr/bin/python

RUN git clone https://github.com/juj/emsdk.git
WORKDIR emsdk
RUN ./emsdk install latest
RUN ./emsdk activate latest

WORKDIR /src
CMD source /emsdk/emsdk_env.sh --build=Release && emcc -s WASM=1 $WASM_INPUT -o $WASM_OUTPUT