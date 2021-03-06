## [client](https://github.com/Minyus/ml_config/tree/master/client)
Environment of client for MLOps/Kubernetes


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

### `.bashrc_interactive`
  - Enable bash-completion by pressing Tab key for `kubectl` and `helm`
  - Automatic `ls` after `cd`
  - Two-line prompt
  - Aliases

### `.xonshrc`
  ![kubectl_in_Xonsh](https://github.com/Minyus/ml_config/blob/master/client/img/kubectl_in_Xonsh.png)
  - Enable bash-completion inherited from .bashrc in the pull-down menu of Xonsh without pressing Tab key 
  - Automatic `ls` after `cd`
  - Two-line prompt
  - Aliases
  - If you want to see more info about Kubernetes cluster resources in the pull-down menu, you can consider these alternatives:
    - https://github.com/c-bata/kube-prompt
    - https://github.com/cloudnativelabs/kube-shell

### `.vimrc`
  - Enable https://github.com/itchyny/lightline.vim

## Instruction to set up without Docker in Linux or macOS
  - Make sure bash-completion is installed.
    - [Ubuntu]: If you do not find `/usr/share/bash-completion/bash_completion`, install by apt:
     ```bash
     $ apt-get update && apt-get -yq dist-upgrade && apt-get install -yq --no-install-recommends bash-completion
     ```
    - [macOS]: If you do not find `/usr/local/share/bash-completion/bash_completion`, install by Homebrew:
     ```bash
     $ brew install bash-completion
     ```
  - Copy `.bashrc_interactive`, `.xonshrc`, and `.vimrc` to `$HOME` directory.
  - To use `.bashrc_interactive` in Xonsh, install Python and [Xonsh](https://xon.sh/index.html#installation) by conda or pip:
    ```bash
    $ conda config --add channels conda-forge
    $ conda install xonsh
    ```
    or
    ```bash
    $ pip install xonsh
    ```
  - To use `.bashrc_interactive` in Bash in interactive mode, append the following script to `$HOME/.bashrc`.
    ```bash
    [[ $- =~ i ]] && source $HOME/.bashrc_interactive
    ```