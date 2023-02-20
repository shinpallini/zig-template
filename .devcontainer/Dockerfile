FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-20.04

RUN git clone https://github.com/zigtools/zls-vscode ~/zls \
    && cd ~/zls \
    && zig build \
    && chmod +x zig-out/bin/zls