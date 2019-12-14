set -x PATH /usr/local/opt/gnu-tar/libexec/gnubin $HOME/.rbenv/bin $HOME/.nodebrew/current/bin /usr/local/bin /usr/local/sbin $PATH

set -x PATH $HOME/Library/Android/sdk/tools $PATH
set -x PATH $HOME/Library/Android/sdk/platform-tools $PATH
set -x PATH ./node_modules/.bin $PATH
set -x PATH ~/.composer/vendor/bin/ $PATH
set -x NODE_PATH /usr/local/lib/node_modules

source (rbenv init - | psub)

set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
# source (pyenv init - | psub)

set -x HISTSIZE 2000000
set -x HISTFILESIZE 200000000
set -x HISTCONTROL ignoredups

# alias sed='gsed'
alias timeout='gtimeout'
alias dl='docker ps -l -q'
alias zcat='gzcat'

set -x SVN_EDITOR vim

#theme
set -g theme_powerline_fonts no

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
