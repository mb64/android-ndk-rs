#!/bin/sh

while read ARCH && read TARGET ; do
    bindgen wrapper.h -o src/ffi_$ARCH.rs -- --sysroot="${NDK_HOME}"/sysroot --target=$TARGET
done << EOF
arm
arm-linux-androideabi
armv7
armv7-linux-androideabi
aarch64
aarch64-linux-android
i686
i686-linux-android
x86_64
x86_64-linux-android
EOF
