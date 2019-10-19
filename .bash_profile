
# bashrc

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# alias

alias ll='ls -la'
alias la='ls -a'

# PATH

export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$PATH:~/git/dotfiles_private/bin:~/git/dotfiles/bin
export PATH=$PATH:/usr/libexec
export PATH=$PATH:~/Library/Python/2.7/bin/
export PATH="/usr/local/opt/openssl/bin:$PATH"

# JAVA
# export JAVA_HOME=`java_home`

# android SDK
# export ANDROID_HOME=~/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if [ -e $HOME/.rbenv ]; then
  eval "$(rbenv init -)"
fi

# mysql 5.7
# export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
# export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
# export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.7/lib/pkgconfig"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# erlenv
export PATH="$HOME/.erlenv/bin:$PATH"
if command -v erlenv 1>/dev/null 2>&1; then
  eval "$(erlenv init -)"
fi

# exenv 
export PATH="$HOME/.exenv/bin:$PATH"
if command -v exenv 1>/dev/null 2>&1; then
  eval "$(exenv init -)"
fi

# nodenv (brew install nodenv)
if command -v nodenv 1>/dev/null 2>&1; then
  eval "$(nodenv init -)"
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# direnv (brew install direnv)
if command -v direnv 1>/dev/null 2>&1; then
  eval "$(direnv hook bash)"
fi

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
if command -v anyenv 1>/dev/null 2>&1; then
  eval "$(anyenv init -)"
fi

