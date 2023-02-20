#!/bin/bash

FILENAME="zig-linux-x86_64-0.11.0-dev.1650+5e7b09ce9.tar.xz"

# install zig
# if download failed, download pem file from "https://curl.se/docs/caextract.html"
curl -O https://ziglang.org/builds/${FILENAME} --cacert pem/cacert-2023-01-10.pem

# make directory to put zig files
sudo mkdir /usr/local/zig

# extract zig.tar.xz
sudo tar Jxvf ${FILENAME} -C /usr/local/zig --strip-components 1

# remove download file
rm ${FILENAME}