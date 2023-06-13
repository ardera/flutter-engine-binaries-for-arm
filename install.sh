#!/bin/bash

if [ `dpkg --print-architecture` == 'arm64' ]; then export ARM=arm64; else export ARM=arm; fi

install ./$ARM/libflutter_engine.so.* ./$ARM/icudtl.dat /usr/lib
install ./flutter_embedder.h /usr/include

