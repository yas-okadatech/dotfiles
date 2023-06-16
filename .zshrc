autoload -Uz compinit && compinit

# PATH
export PATH=/usr/local/opt/openssl@3/bin:$PATH

# homebrew

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi


# asdf
. $(brew --prefix asdf)/libexec/asdf.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f "${HOME}/google-cloud-sdk/path.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "${HOME}/google-cloud-sdk/completion.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/completion.zsh.inc"; fi

export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init - zsh)"

# gcloud
# brew install google-cloud-sdk
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc

# direnv
eval "$(direnv hook zsh)"

# jenv
eval "$(jenv init -)"

