# Engine Binaries
This branch contains precompiled flutter engine binaries, header files for use on the Raspberry Pi.

## Installation
If you want to install the flutter engine on your Pi, do the following steps:

1. Install the binaries:
```
$ git clone --depth 1 https://github.com/ardera/flutter-engine-binaries-for-arm.git engine-binaries
$ cd engine-binaries
$ sudo ./install.sh
```

## build parameters
The engine is built using tip-of-tree llvm/clang 11 and libcxx. The following args are passed to _gn_:
```bash
--linux-cpu arm
--embedder-for-target
--no-lto
--target-os linux
--arm-float-abi hard
```
