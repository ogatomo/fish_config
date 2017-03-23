set -x PATH /usr/local/opt/gnu-tar/libexec/gnubin $HOME/.rbenv/bin /usr/local/bin /usr/local/sbin $PATH

set -x PATH /Users/t-ogawa/Library/Android/sdk/tools $PATH
set -x PATH /Users/t-ogawa/Library/Android/sdk/platform-tools $PATH
set -x PATH ./node_modules/.bin $PATH
set -x PATH ~/.composer/vendor/bin/ $PATH

source (rbenv init - | psub)

set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
source (pyenv init - | psub)

set -x HISTSIZE 2000000
set -x HISTFILESIZE 200000000
set -x HISTCONTROL ignoredups

# alias sed='gsed'
alias timeout='gtimeout'
alias objc2swift='java -jar ~/Applications/objc2swift/build/libs/objc2swift-1.0.jar'
alias dl='docker ps -l -q'
alias zcat='gzcat'

set -x SVN_EDITOR vim
