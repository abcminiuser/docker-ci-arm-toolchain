FROM archlinux/base:latest

# Common tools
RUN pacman --noconfirm -Syu && \
    pacman --noconfirm -S make git cppcheck doxygen

# ARM Embedded toolchain
RUN pacman --noconfirm -S arm-none-eabi-gcc

CMD ["/bin/bash"]
