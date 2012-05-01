export LANG=ja_JP.UTF-8
#export LANG=ja_JP.eucJP

PROMPT='%n$ '
#PROMPT='%n@%M$ '
PROMPT2="%_%% "
RPROMPT='[%d]'
SPROMPT="%r is correct? [n,y,a,e]: "

# set terminal title including current directory
#
case "${TERM}" in
kterm*|xterm)
    precmd() {
        echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
    }
    ;;
esac 

# completion configuration
autoload -U compinit
compinit

# history configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data 

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end 

# auto directory pushd that you can get dirs list by cd -[tab]
setopt auto_pushd
# command correct edition before each completion attempt
setopt correct
# no beep sound when complete list displayed
setopt nolistbeep

# ls color
export LSCOLORS=exfxcxdxbxegedabagacad
alias ls='ls -G'
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
alias gls='gls --color'
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
