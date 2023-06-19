FROM ubuntu:20.04
LABEL maintainer="Yann Bernard <yann.bernard@makerlab-hannover.de>"

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV TZ Europe/Berlin

# Install Baisic Packages
RUN apt update -y && apt-get upgrade -y
RUN apt install -y sudo curl git-core gnupg locales zsh wget nano fonts-powerline git vim neovim
RUN locale-gen de_DE.UTF-8
RUN adduser --quiet --disabled-password --shell /bin/zsh --home /home/devuser --gecos "User" devuser
RUN echo "devuser:esppasswd" | chpasswd && usermod -aG sudo devuser

# Install Dependencies
RUN apt install -y bison build-essential ccache cmake dfu-util flex g++ gcc git gperf libavahi-client-dev libavahi-client3 libavahi-common-dev libcairo2-dev libconfig++-dev libconfig-dev libdbus-1-dev libffi-dev libgirepository1.0-dev libglib2.0-dev libncurses-dev libreadline-dev libssl-dev libtool libtool-bin libusb-1.0-0 ninja-build pkg-config python3 python3-dev python3-pip python3-venv unzip wget 
RUN pip install --upgrade pip
RUN pip install pyelftools cmake ninja pyyaml cryptography pyserial pyparsing

# Setup permissions
RUN chown -R devuser:devuser /home/devuser
USER devuser

# Setup esp-idf
WORKDIR /home/devuser
RUN mkdir ./tools
WORKDIR /home/devuser/tools
RUN git clone --recursive https://github.com/espressif/esp-idf.git -b v4.4.2 esp-idf
WORKDIR /home/devuser/tools/esp-idf 
RUN git submodule update --init
RUN ./install.sh
# RUN export IDF_PATH=/home/devuser/tools/esp-idf

# Setup connectedhomeip
WORKDIR /home/devuser/tools
RUN git clone https://github.com/project-chip/connectedhomeip.git
WORKDIR /home/devuser/tools/connectedhomeip
RUN git fetch origin v1.0-branch
RUN git checkout FETCH_HEAD
RUN git submodule update --init --recursive
# RUN . /home/devuser/tools/connectedhomeip/scripts/activate.sh

# Setup Workspace
# RUN . /home/devuser/tools/esp-idf/export.sh
WORKDIR /home/devuser
RUN mkdir /home/devuser/projects

# initial dir
WORKDIR /home/devuser
CMD ["zsh"]
