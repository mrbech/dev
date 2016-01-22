autoload -U compinit && compinit
autoload -U promptinit && promptinit
autoload -U colors && colors

export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=2000
export SAVEHIST=2000
export REPORTTIME=10

setopt alwaystoend
setopt autocd
setopt nocaseglob
setopt completealiases
setopt completeinword
setopt correct
setopt extendedglob
setopt histignorealldups
setopt histreduceblanks
setopt histverify
setopt incappendhistory
setopt interactive
setopt nolistbeep
setopt monitor
setopt sharehistory
setopt prompt_subst

source ~/.aliases
source ~/.completions
source ~/.git_zsh_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

man() {
    env LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

export PS1='%B%F{2}%n@%m%f%b:%B%F{4}%~%f%b
λ '

bindkey '\e[1~'  beginning-of-line
bindkey '\e[4~'  end-of-line
bindkey '\e[2~'  quoted-insert
bindkey '\e[3~'  delete-char
bindkey '\e[5C'  forward-word
bindkey '\e[5~'   history-beginning-search-backward
bindkey '\e[6~'   history-beginning-search-forward
bindkey '\eOc'   emacs-forward-word
bindkey '\e[5D'  backward-word
bindkey '\eOd'   emacs-backward-word
bindkey '\e\e[C' forward-word
bindkey '\e\e[D' backward-word
bindkey '\e[Z'   reverse-menu-complete
bindkey '\e[7~' beginning-of-line
bindkey '\e[8~' end-of-line

_force_rehash() {
  (( CURRENT == 1 )) && rehash
  return 1	# Because we didn't really complete anything
}

zstyle ':completion:*' completer \
    _oldlist \
    _expand \
    _force_rehash \
    _complete _ignored \
    _match _correct \
    _approximate \
    _prefix

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' add-space true
zstyle :compinstall filename '/home/mrob/.zshrc'

## If on tty1 run X
#_startx() {
#    nohup startx "$@" > /dev/null 2&>.xlog &
#    disown
#    vlock
#}

#tmux
#if [[ -n "$DISPLAY" ]] then
#    if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ] && [ $TERM !=      "xterm-color" ]; then
#    tmux
#    fi
#fi
