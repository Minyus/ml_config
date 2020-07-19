FROM homebrew/ubuntu18.04:2.4.7

RUN brew install kubectl

RUN apt-get update \
    && apt-get -yq dist-upgrade \
    && apt-get install -yq --no-install-recommends \
    curl \
    git \
    htop \
    httpie \
    net-tools \
    openssh-client \
    rsync \
    tmux \
    tree \
    unzip \
    vim \
    wget \
    xonsh \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

# Configure Bash
COPY ./.bashrc /root/.bashrc_from_context
RUN cat /root/.bashrc_from_context >> /root/.bashrc

# Configure Xonsh
COPY ./.xonshrc /root
# RUN cat /root/.bashrc_from_context | grep "^alias " | sed -e 's/alias /aliases\[\"/g' | sed -e 's/=/\"\]=/g' >> /root/.xonshrc

# Configure Vim
COPY ./.vimrc /root

# Set Environment Variables
ENV TERM=xterm-256color
ENV LC_ALL=C.UTF-8

ENTRYPOINT ["/bin/sh"]
CMD ["-c", "tail", "-f", "/dev/null"]
