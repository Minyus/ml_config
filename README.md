# ml_config

ML and MLOps configuration (Docker and rc files)


## `ml`: Environment for ML model training and prototyping

### `Dockerfile`
  - OS: Ubuntu 18.04
  - Miniconda
  - Python Packages of large size are installed in separate RUN steps so you can easily remove if the image size matters.

### `docker-compose.yml`
  - Expose ports for ML

## `client`: Environment of client for MLOps/Kubernetes

### `Dockerfile`
  - OS: Ubuntu 18.04
  - Miniconda
  - Linuxbrew
  - kubectl
  - helm

### `docker-compose.yml`
  - Run in host's network
  - Mount `~/.kube` to use kubeconfig in host
  - Mount `~/.ssh` to use ssh config in host

### `.bashrc`
  - Enable bash-completion by pressing Tab key for `kubectl` and `helm`
  - Automatic `ls` after `cd`
  - Two-line prompt
  - Aliases

### `.xonshrc`
  - Enable bash-completion inherited from .bashrc in the pull-down menu of Xonsh without pressing Tab key 
  - Automatic `ls` after `cd`
  - Two-line prompt
  - Aliases
  - If you want to see more info about Kubernetes cluster resources in the pull-down menu, you can consider these alternatives:
    - https://github.com/c-bata/kube-prompt
    - https://github.com/cloudnativelabs/kube-shell

### `.vimrc`
  - Enable https://github.com/itchyny/lightline.vim
