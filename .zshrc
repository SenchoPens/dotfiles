DEFAULT_USER=sencho  # Hide name in prompt

HISTSIZE=5000
SAVEHIST=5000
setopt autocd beep extendedglob
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

# Arrow history completion
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

KEYTIMEOUT=1

source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle lol
antigen bundle suse
antigen bundle chucknorris
antigen bundle taskwarrior
antigen bundle web-search
antigen bundle cabal
antigen bundle vi-mode

antigen bundle zsh-users/zsh-syntax-highlighting  # Syntax highlighting bundle
antigen bundle chrissicool/zsh-256color  # 256 color
antigen bundle Tarrasch/zsh-colors  # color command (ex: red 'hi' prints hi in red)

antigen theme agnoster  # Load the theme.

antigen apply

for script in ~/.zshrc.d/*.zsh; do
  source $script
done

eval $(thefuck --alias)  # make fuck work

# flames setup
#SEGMENT_SEPARATOR="\uE0C0"

