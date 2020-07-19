# export PS1="\[\e[33;44m\]\W\[\e[m\] \[\e[31;40m\]\\$\[\e[m\] "

# https://discourse.brew.sh/t/bash-completion-2-vs-brews-auto-installed-bash-completions/2391/2
if [[ -e "/usr/local/share/bash-completion/bash_completion" ]]; then
	export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
	source "/usr/local/share/bash-completion/bash_completion"
elif [[ -e "/usr/local/etc/profile.d/bash_completion.sh" ]]; then
	source "/usr/local/etc/profile.d/bash_completion.sh"
elif [[ -e "/etc/bash_completion" ]]; then
	source "/etc/bash_completion"
fi

source <(kubectl completion bash) # setup autocomplete in bash into the current shell, bash-completion package should be installed first.
complete -F __start_kubectl k


alias ll="ls -lah"
alias ls="tree -L 1 -a -f -p --si --du --timefmt '%Y/%m/%d %H:%M'"
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
alias doc="docker"
alias dc="docker-compose"
alias jup="jupyter notebook --ip 0.0.0.0 --allow-root --no-browser --no-mathjax --notebook-dir ."
alias ten="tensorboard --host 0.0.0.0 --logdir"
alias mlf="mlflow server --host 0.0.0.0"
alias ked="kedro viz --host 0.0.0.0"
alias k="kubectl"
