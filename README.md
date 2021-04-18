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

## official arm64 engine binaries
Google also provides official linux arm64 engine binaries now. However, those binaries are meant to be used with linux desktop and depend on things like glib, gio, libgtk, libX11, libwayland etc and are also rather large (the debug engine is 100MB). Also the all the embedder API symbols have the "HIDDEN" visibility in the final ELF file, so I don't think they can be used with flutter-pi.

Here's the links anyway:

| artifacts name                | link                                                                                                                    |
| ----------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| common artifacts              | `https://storage.googleapis.com/flutter_infra_release/flutter/$VERSION/linux-arm64/artifacts.zip`                       |
| debug engine & gen_snapshot   | `https://storage.googleapis.com/flutter_infra_release/flutter/$VERSION/linux-arm64/linux-arm64-flutter-gtk.zip`         |
| profile engine & gen_snapshot | `https://storage.googleapis.com/flutter_infra_release/flutter/$VERSION/linux-arm64-profile/linux-arm64-flutter-gtk.zip` |
| release engine & gen_snapshot | `https://storage.googleapis.com/flutter_infra_release/flutter/$VERSION/linux-arm64-release/linux-arm64-flutter-gtk.zip` |

**NOTE**: In those links, replace `$VERSION` with the engine commit SHA you want to download the binaries for. For a given version of the flutter SDK, you can always find the exact engine commit hash inside `bin/internal/engine.version`. For example, you can always find the commit hash for latest stable [here](https://github.com/flutter/flutter/blob/stable/bin/internal/engine.version).