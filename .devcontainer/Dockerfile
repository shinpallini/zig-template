FROM mcr.microsoft.com/vscode/devcontainers/universal:2

# RUN apt update \
#     && apt install -y --no-install-recommends curl xz-utils

COPY cacert-2023-01-10.pem .

RUN curl -O https://ziglang.org/builds/zig-linux-x86_64-0.11.0-dev.1650+5e7b09ce9.tar.xz --cacert cacert-2023-01-10.pem \
    && mkdir /usr/local/zig \
    && tar Jxvf zig-linux-x86_64-0.11.0-dev.1650+5e7b09ce9.tar.xz -C /usr/local/zig --strip-components 1