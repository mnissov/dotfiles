# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep nomatch notify
unsetopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "/home/morten/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

if lsb_release -is | grep -qi "Endeavouros" ; then
	source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
fi
if lsb_release -is | grep -qi "Ubuntu" ; then
	source ~/powerlevel10k/powerlevel10k.zsh-theme
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ADDED BY USER
# apply spell correction on commands
setopt correctall

# autoload completion
# -U ignore alises
# +X only load named function
autoload -U compinit && compinit
autoload -U bashcompinit && bashcompinit

# Do menu-driven completion
# menu select: enter select but does not execute command
zstyle ":completion:*" menu select
# `rehash true` sucks

## BINDKEYS
# allow shift tabbing
bindkey "^[[Z" reverse-menu-complete
# home, end, and delete keys
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

## ALIASES
# add coloring to ls
alias ls="ls --color=always --group-directories-first $@"

# PUT AT END
if lsb_release -is | grep -qi "Endeavouros" ; then
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
if lsb_release -is | grep -qi "Ubuntu" ; then
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
