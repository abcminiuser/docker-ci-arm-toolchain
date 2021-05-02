FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

# Common tools
RUN apt-get update && \
    apt-get -y install make git cppcheck doxygen

# ARM Embedded toolchain (distro version)
RUN apt-get -y install gcc-arm-none-eabi

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
