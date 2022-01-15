export CLICOLOR=true

fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory
setopt autocd
setopt extendedglob
setopt notify

# vi editor as a default
export VISUAL=vi
export EDITOR="$VISUAL"

# theme
source $ZSH/zsh/themes/sfp.zsh-theme
