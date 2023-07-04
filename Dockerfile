FROM ubuntu:20.04
LABEL maintainer="Yann Bernard <yann.bernard@makerlab-hannover.de>"

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV TZ Europe/Berlin
ENV TERM xterm

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
RUN python3 -m pip install esptool;

# Setup scripts
COPY scripts /home/devuser/scripts
COPY .zshrc /home/devuser/.zshrc-tmp
COPY .p10k.zsh /home/devuser/.p10k.zsh
RUN git clone --depth=1 https://github.com/ryanoasis/nerd-fonts.git /home/devuser/Downloads/nerd-fonts
WORKDIR /home/devuser/Downloads/nerd-fonts
RUN ./install.sh
WORKDIR /home/devuser
RUN chown -R devuser:devuser /home/devuser/

# Install ESP-IDF and connectedhomeip
RUN usermod -aG dialout devuser
WORKDIR /home/devuser
USER devuser
RUN sh /home/devuser/scripts/install/esp_tool_install.sh
RUN sh /home/devuser/scripts/install/connectedhomeip_install.sh
USER root


# Setup Workspace
USER devuser
WORKDIR /home/devuser
RUN mkdir /home/devuser/projects
WORKDIR /home/devuser
RUN rm -rf /home/devuser/Downloads/nerd-fonts
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN rm /home/devuser/.zshrc
RUN mv /home/devuser/.zshrc-tmp /home/devuser/.zshrc
RUN sh /home/devuser/scripts/install/theme_install.sh

# Run the shell
CMD ["zsh"]
