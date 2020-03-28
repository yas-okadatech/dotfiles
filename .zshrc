autoload -Uz compinit && compinit

# homebrew

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi


# asdf
. $(brew --prefix asdf)/asdf.sh

