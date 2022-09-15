# History file settings
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
setopt hist_ignore_all_dups

# Auto completion is case insensitive and has a nice menu
autoload -Uz compinit && compinit
zmodload zsh/complist
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# Plugins
PLUG=/usr/share/zsh/plugins
source $PLUG/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUG/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUG/zsh-history-substring-search/zsh-history-substring-search.zsh

# Custom theme
PROMPT='%F{#458588}%n@%m %F{white}➢%f '

# Shortcuts for paths
alias -g bu="$HOME/Builds"
alias -g dl="$HOME/Downloads"
alias -g dc="$HOME/Documents"

# Other aliases
alias v="$EDITOR"
alias ls="ls --color=always"

# Open any filetype
o()     { xdg-open "$@" 2> /dev/null; } 

# Execute ls after file-manipulation commands
c()   { builtin cd "$@"; ls; }
rm()  { command rm "$@"; ls; }
cp()  { command cp "$@"; ls; }
mv()  { command mv "$@"; ls; }
function md  { command mkdir "$@"; ls; }
function rd  { command rmdir "$@"; ls; }
function t   { command touch "$@"; ls; }

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
    esac && rm "$1"
  else
    echo "'$1' is not a valid file"
  fi
}
