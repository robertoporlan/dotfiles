# general
alias ls='ls -G'
alias la='ls -la'
alias ll='ls -l'
alias lw='ls -l'
alias lqq='ls -l'
alias cl='clear'
alias home='cd ~'
alias rt='reset'
alias trash='rm -fr ~/.Trash'
alias ..='cd ..'
alias celar='clear'
alias tree='ls -R | grep ":$" | sed -e "s/:$//" -e "s/[^-][^\/]*\//--/g" -e "s/^/   /" -e "s/-/|/"'
alias rmds='rm -f .DS_Store .localized;ls -laG'

# finder
alias showfiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# net
alias whois='whois -h whois-servers.net'
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias iplocal='ipconfig getifaddr en1'
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias netlisteners='lsof -i -P | grep LISTEN'

# sofwares
alias textedit='/Applications/TextEdit.app/Contents/MacOS/TextEdit'
alias rmpyc='find . -iname "*.pyc" -delete'

# dropbox
alias drive='cd /Users/gbrlsepulveda/Google Drive'
alias talks='cd /Users/gbrlsepulveda/Google Drive/talks'

# others dirs
alias projetos='cd /Users/gbrlsepulveda/Projetos'

# mongo
alias mongorun='mongod --config /usr/local/Cellar/mongodb/2.0.1-x86_64/mongod.conf &'

# thumbor
alias thumborrun='thumbor -c conf/setting_thumbor_local.py -p 8887 &'

# spec
alias specjs='rake spec:javascript'

# python
alias pyclean='find . -name "*.pyc" -exec rm {} \;'
alias pydist='python setup.py sdist upload -r ipypi'
alias pydev='python setup.py develop --no-deps'

# processes
alias tm='top -o vsize' # memory
alias tu='top -o cpu' # cpu

# mysql
alias mysqlstart='/usr/local/mysql/support-files/mysql.server start'
alias mysqlstop='/usr/local/mysql/support-files/mysql.server stop'
alias mysqlreload='mysqlstart && mysqlstop;'

# sublime editor
export EDITOR="/usr/local/bin/subl"

# paths > general
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/share/npm/bin:${PATH}"

# paths > rvm
if [ -s "$HOME/.rvm/scripts/rvm" ]; then . "$HOME/.rvm/scripts/rvm"; fi
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# paths > virtualenv
export WORKON_HOME="$HOME/.virtualenvs"
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$WORKON_HOME

# colors
export LSCOLORS="DxGxcxdxCxegedabagacad"

# prompt
export PS1='\[\033[01;32m\]\u ➜  \[\033[01;31m\]\w\[\033[00m\]$(git branch &>/dev/null; if [ $? -eq 0 ]; then echo "\[\033[01;33m\] ($(git branch | grep ^*|sed s/\*\ //))\[\033[00m\]"; fi) $ '

# mysql
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments

ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future

PATH="/usr/local/mysql/bin:${PATH}"
export PATH
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib/"
export VERSIONER_PYTHON_PREFER_64_BIT=no
export VERSIONER_PYTHON_PREFER_32_BIT=yes
export ARCHFLAGS="-arch x86_64"

# counter-line-code
alias linecode-js='find . -name *.js | xargs wc -l'
alias linecode-css='find . -name *.css | xargs wc -l'
alias linecode-py='find . -name *.py | xargs wc -l'

# Setting PATH for Python 2.7
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:${PATH}"