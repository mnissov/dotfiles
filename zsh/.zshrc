# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.zsh/.p10k.zsh
source ~/repos/dotfiles/zsh/powerlevel10k/powerlevel10k.zsh-theme

# history options
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# ignore duplicates
setopt histignoredups
setopt beep nomatch notify
unsetopt autocd extendedglob

# The following lines were added by compinstall
zstyle :compinstall filename "/home/morten/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall
# autoload completion
# -U ignore aliases
# +X only load named function
autoload -U compinit && compinit
autoload -U bashcompinit && bashcompinit

# apply spell correction on commands
# actually quite annoying
#setopt correctall

# COMPLETION SETTINGS #
# completers
## https://thevaluable.dev/zsh-completion-guide-examples/
zstyle ':completion:*' completer _extensions _complete # _approximate

# Do menu-driven completion
## menu select: enter select but does not execute command
zstyle ":completion:*" menu select
## `rehash true` sucks

# grouping suggestions
## https://bbs.archlinux.org/viewtopic.php?id=225303
zstyle ":completion:*:matches" group 'yes'
zstyle ":completion:*" group-name ''
zstyle ":completion:*" list-dirs-first true

zstyle ':completion:*' squeeze-slashes true

# auto add "/" to ".."
## https://superuser.com/questions/277019/zsh-parent-directory-completion
zstyle ":completion:*" special-dirs true

# coloring suggestions
eval "$(dircolors)"
zstyle ":completion:*" list-colors ${(s.:.)LS_COLORS}

## BINDKEYS
# vi vs emacs
# https://zsh.sourceforge.io/Guide/zshguide04.html
bindkey -e
# allow shift tabbing
bindkey "^[[Z" reverse-menu-complete
# home, end, and delete keys
bindkey "^[[H" beginning-of-line
#bindkey "${terminfo[khome]}" beginning-of-line
bindkey "^[[F" end-of-line
#bindkey "${terminfo[kend]}" end-of-line
#bindkey "^[[3~" delete-char
bindkey "${terminfo[kdch1]}" delete-char
# https://superuser.com/questions/585003/searching-through-history-with-up-and-down-arrow-in-zsh
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search	# Up
bindkey "${terminfo[kcud1]}" down-line-or-beginning-search	# Down

## ALIASES
# add coloring to ls
alias ls="ls --color=always --group-directories-first $@"

alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

# PUT AT END
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
if lsb_release -is | grep -qi "EndeavourOS" ; then
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
if lsb_release -is | egrep -qi "Ubuntu|Pop" ; then
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
