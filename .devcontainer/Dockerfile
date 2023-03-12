FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-20.04
ARG FILENAME="zig-linux-x86_64-0.11.0-dev.1929+4ea2f441d.tar.xz"

# install ca-certificates
RUN sudo apt update && sudo apt install ca-certificates

# install zig
RUN curl -O https://ziglang.org/builds/${FILENAME} \
    && sudo mkdir /usr/local/zig \
    && sudo tar Jxvf ${FILENAME} -C /usr/local/zig --strip-components 1 \
    && rm ${FILENAME}

ENV PATH $PATH:/usr/local/zig
    
# install zls
RUN git clone --recurse-submodules https://github.com/zigtools/zls \
    && cd zls \
    && zig build -Doptimize=ReleaseSafe