export PATH=/usr/lib64/mpi/gcc/openmpi/bin:~/bin:/usr/local/bin:/usr/bin:/bin:/opt:~/.cabal/bin

HISTSIZE=5000
SAVEHIST=5000
setopt autocd beep extendedglob
bindkey -v
export KEYTIMEOUT=1
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

source /usr/share/antigen.zsh
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
antigen bundle sudo
antigen bundle cabal

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Translating bundle.
antigen bundle soimort/translate-shell

# Hide name.
DEFAULT_USER=sencho

# Load the theme.
antigen theme agnoster

# 256 color
antigen bundle chrissicool/zsh-256color

antigen apply


# Cool dot completion
rationalise-dot() {
  if [[ $LBUFFER = *.. ]]; then
    LBUFFER+=/..
  else
    LBUFFER+=.
  fi
}
zle -N rationalise-dot
bindkey . rationalise-dot


source ~/.zshrc.d/zsh_al  # load aliases
source ~/.zshrc.d/zsh_fu  # load functions
source ~/.zshrc.d/zsh_wtf  # load some fun

# flames setup
SEGMENT_SEPARATOR="\uE0C0"

