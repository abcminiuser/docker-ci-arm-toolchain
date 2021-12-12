FROM archlinux:latest

# Common tools
RUN patched_glibc=glibc-linux4-2.33-4-x86_64.pkg.tar.zst && \
curl -LO "https://repo.archlinuxcn.org/x86_64/$patched_glibc" && \
bsdtar -C / -xvf "$patched_glibc"
RUN pacman --noconfirm -Syu && \
    pacman --noconfirm -S make git cppcheck doxygen

# ARM Embedded toolchain
RUN pacman --noconfirm -S arm-none-eabi-gcc

CMD ["/bin/bash"]
