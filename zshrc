# Load Boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
# load nvm
[[ -s /Users/joeybaker/.nvm/nvm.sh ]] && . /Users/joeybaker/.nvm/nvm.sh

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="maran"

#zmv
autoload zmv

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias tolf="find . -type f -not -iname '*.png' -not -iname '*.jpg' -not -iname '*.jpeg' -not -iname '*.gif' -not -iname '*.tif' -not -iname '*.tiff' -not -iname '.git' -exec perl -pi -e 's/\r\n?/\n/g' {} \;"
alias mysql='mysql -u root -proot'
alias sshj='ssh joeybaker@byjoeybaker.com'
alias bower='noglob bower'

alias l='ls -AG'
function mkcd() { mkdir -p "$@" && cd "$_"; }
alias gitp='git pull; git push;'
alias gitcleanup='git fsck —unreachable;
git reflog expire —expire=0 —all;
git repack -a -d -l;
git prune;
git gc —aggressive;'
alias git status='git status -sb'
alias html2text='python /Users/joeybaker/scripts/html2text/html2text.py '
function findin(){ find ./ -type f -exec grep -Hn "$1" {} \;;}
function whodid(){ git log --pretty=format:"%Cblue%ad %Cgreen%aN %Cred https://github.com/meraki/monty/commit/%H%n%Creset%d%n%B" --date=short --reverse --all --since=2.days.ago $@}
alias httpserve="python -m SimpleHTTPServer"
alias pgstart='postgres -D /usr/local/var/postgres'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# git aliases
alias gc="git commit -a"
alias gx="git checkout"
alias gs='git stash'
alias gsp='git stash pop'
alias gsl='git stash list'

# set the rack env to dev for ruby (rails)
export RACK_ENV='development'
# set node env
export NODE_ENV='development'
# misc env vars
[[ -s "$HOME/.env" ]] && source "$HOME/.env"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git npm gem sublime osx heroku brew vi-mode bower cloudapp supervisor last-working-dir history-substring-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source `brew --prefix`/etc/profile.d/z.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/Cellar:$PATH
# export PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH" # for brew's version of PHP
export PATH="/usr/local/heroku/bin:$PATH" ### Added by the Heroku Toolbelt
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export EDITOR='vi'
export HOMEBREW_TEMP=~/.homebrew_temp
export NODE_PATH=/usr/local/lib/node_modules
# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth
# http://jonisalonen.com/2012/your-bash-prompt-needs-this/
# export PS1="\[\033[G\]$PS1"


# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

