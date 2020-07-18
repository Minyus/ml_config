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

COPY . /root

ENTRYPOINT ["/bin/sh"]
CMD ["-c", "tail", "-f", "/dev/null"]
