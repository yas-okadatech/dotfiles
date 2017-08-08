
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

# JAVA
export JAVA_HOME=`java_home`

# android SDK
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
