PROMPT="%B%F{cyan}%n @ %m%b:%F{yellow}%~ %% %F{brightwhite}"
RPROMPT="%F{yellow}%T"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias ll="ls -la"
alias brwe="brew"
. /Users/juri/Library/Python/3.8/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export GPG_TTY=$(tty)
