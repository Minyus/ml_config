
###################################################

# Set up prompt
# Tool: http://ezprompt.net/
export PS1="| \[\e[32;40m\]\u\[\e[m\] @ \[\e[31;40m\]\h\[\e[m\] : \[\e[35;40m\]\w\[\e[m\] \n|\[\e[33m\]\\$\[\e[m\] "

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

# Set up autocompletion for kubectl: 
# Reference: https://kubernetes.io/docs/tasks/tools/install-kubectl/
source /usr/share/bash-completion/bash_completion
kubectl completion bash >/etc/bash_completion.d/kubectl
alias k="kubectl"
complete -F __start_kubectl k
