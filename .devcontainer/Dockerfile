FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-20.04
ARG FILENAME="zig-linux-x86_64-0.11.0-dev.1650+5e7b09ce9.tar.xz"

# install ca-certificates
RUN sudo apt update && sudo apt install ca-certificates
# install zls
RUN git clone https://github.com/zigtools/zls-vscode ~/zls \
    && cd ~/zls \
    && zig build \
    && chmod +x zig-out/bin/zls

# install zig
RUN curl -O https://ziglang.org/builds/${FILENAME} \
    && sudo mkdir /usr/local/zig \
    && tar Jxvf ${FILENAME} -C /usr/local/zig --strip-components 1 \
    && rm ${FILENAME}