
###################################################

# Set up prompt
# Tool: http://ezprompt.net/
export PS1="| \[\e[32;40m\]\u\[\e[m\] @ \[\e[31;40m\]\h\[\e[m\] : \[\e[35;40m\]\w\[\e[m\] \n|\[\e[33m\]\\$\[\e[m\] "

# Enable automatic "ls" upon "cd"
cl()
{
    \cd "$@" && ls
}
alias c="cl"

# Set up aliases
alias ll="ls -lah"
alias t="tree -L 1 -a -f -p --si --du --timefmt '%Y/%m/%d %H:%M'"
alias tt="tree -L 2 -a -f -p --si --du --timefmt '%Y/%m/%d %H:%M'"
alias ttt="tree -L 3 -a -f -p --si --du --timefmt '%Y/%m/%d %H:%M'"
alias tttt="tree -L 4 -a -f -p --si --du --timefmt '%Y/%m/%d %H:%M'"
alias ttttt="tree -L 5 -a -f -p --si --du --timefmt '%Y/%m/%d %H:%M'"
alias vi="vim"
alias vb="vim ~/.bashrc"
alias vx="vim ~/.xonshrc"
alias vs="vim ~/.ssh/config"
alias vv="vim ~/.vimrc"
alias d="cd .."
alias dd="cd ../.."
alias ddd="cd ../../.."
alias dddd="cd ../../../.."
alias ddddd="cd ../../../../.."
alias fh="free -h"
alias wf="watch free -h"
alias jup="jupyter notebook --ip 0.0.0.0 --allow-root --no-browser --no-mathjax --notebook-dir ."
alias ten="tensorboard --host 0.0.0.0 --logdir"
alias mlf="mlflow server --host 0.0.0.0"
alias ked="kedro viz --host 0.0.0.0"
alias doc="docker"
alias de="docker exec -it"
alias dc="docker-compose"

# Set up autocompletion for kubectl
# Reference: https://kubernetes.io/docs/tasks/tools/install-kubectl/

# If the environment is Linux:
if [[ -e "/usr/share/bash-completion/bash_completion" ]]; then
    export BASH_COMPLETION_COMPAT_DIR="/etc/bash_completion.d"
    
    # source bash completion installed by brew
    compat_dir="/home/linuxbrew/.linuxbrew/etc/bash_completion.d" 
    if [[ -d $compat_dir && -r $compat_dir && -x $compat_dir ]]; then
        for i in "$compat_dir"/*; do
            if [[ -w "$BASH_COMPLETION_COMPAT_DIR" ]]; then
                cp "$i" "$BASH_COMPLETION_COMPAT_DIR" 
            else
                source "$i"
            fi
        done
    fi
    unset compat_dir i

    source "/usr/share/bash-completion/bash_completion"


# If the environment is macOS:
elif [[ -e "/usr/local/share/bash-completion/bash_completion" ]]; then
	export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
    kubectl completion bash > "$BASH_COMPLETION_COMPAT_DIR/kubectl"
	source "/usr/local/share/bash-completion/bash_completion"
    export PATH="$PATH:/usr/local/bin/"
fi

alias k="kubectl"
complete -F __start_kubectl k

alias kn="kubectl config set-context --current --namespace"
