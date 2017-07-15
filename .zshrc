export PATH=/usr/lib64/mpi/gcc/openmpi/bin:~/bin:/usr/local/bin:/usr/bin:/bin:/opt:~/.cabal/bin:
DEFAULT_USER=sencho  # Hide name in prompt

HISTSIZE=5000
SAVEHIST=5000
setopt autocd beep extendedglob
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

bindkey -v
KEYTIMEOUT=1

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

antigen bundle zsh-users/zsh-syntax-highlighting  # Syntax highlighting bundle
antigen bundle desyncr/auto-ls
antigen bundle chrissicool/zsh-256color  # 256 color

antigen theme agnoster  # Load the theme.

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
#SEGMENT_SEPARATOR="\uE0C0"

bindkey -v      # vi mode

