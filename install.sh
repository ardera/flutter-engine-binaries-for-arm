#!/bin/bash

if [ `uname -m` == 'aarch64' ]; then export ARM=arm64; else export ARM=arm; fi

install ./$ARM/libflutter_engine.so.* ./$ARM/icudtl.dat /usr/lib
install ./flutter_embedder.h /usr/include

