FROM homebrew/ubuntu18.04:2.4.7

RUN apt-get update \
    && apt-get -yq dist-upgrade \
    && apt-get install -yq --no-install-recommends \
    bash-completion \
    ca-certificates \
    curl \
    gettext \
    git \
    htop \
    httpie \
    jq \
    net-tools \
    openssh-client \
    rsync \
    tar \
    tmux \
    tree \
    unzip \
    vim \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN brew install kubectl

RUN brew install helm

# Install Miniconda, Python, and Xonsh
ARG PYTHON_VERSION=3.7
RUN curl -fsSL -v -o ~/miniconda.sh -O  https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
    chmod +x ~/miniconda.sh && \
    ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    /opt/conda/bin/conda install -y python=${PYTHON_VERSION} && \
    /opt/conda/bin/conda config --add channels conda-forge && \
    /opt/conda/bin/conda install xonsh && \
    /opt/conda/bin/conda clean -ya
ENV PATH=/opt/conda/bin:$PATH

WORKDIR /

# Configure Bash
COPY ./.bashrc_interactive /root
RUN echo '[[ $- =~ i ]] && source $HOME/.bashrc_interactive'  >> /root/.bashrc

# Configure Xonsh
COPY ./.xonshrc /root
# RUN cat /root/.bashrc_interactive | grep "^alias " | sed -e 's/alias /aliases\[\"/g' | sed -e 's/=/\"\]=/g' >> /root/.xonshrc

# Configure Vim
COPY ./.vimrc /root

# Set Environment Variables
ENV TERM=xterm-256color
ENV LC_ALL=C.UTF-8

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["tail", "-f", "/dev/null"]
