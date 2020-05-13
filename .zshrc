# History file settings
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# Auto completion is case insensitive and has a nice menu
autoload -Uz compinit && compinit
zmodload zsh/complist
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# Autosuggestions plugin
PLUG=/usr/share/zsh/plugins
source $PLUG/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUG/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUG/zsh-history-substring-search/zsh-history-substring-search.zsh

# Extract archives
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Shortcuts for paths
alias -g dl="$HOME/Downloads"
alias -g dc="$HOME/Documents"
alias -g b="$HOME/builds"
alias -g ic="$HOME/Documents/current/ic"
alias -g nds="$HOME/Documents/current/nds"
alias -g ns="$HOME/Documents/current/pc"
alias -g rms="$HOME/Documents/current/rm"

# Other aliases
alias v="$EDITOR"

o()     { xdg-open "$@" 2> /dev/null; }  # Open any filetype

# Execute ls after file-manipulation commands
c()   { builtin cd "$@"; ls; }
rm()  { command rm "$@"; ls; }
cp()  { command cp "$@"; ls; }
mv()  { command mv "$@"; ls; }
md()  { command mkdir "$@"; ls; }
rd()  { command rmdir "$@"; ls; }
t()   { command touch "$@"; ls; }
