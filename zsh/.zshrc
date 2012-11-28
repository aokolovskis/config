# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="sunshine"

# include virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

# Example aliases
#alias web3='ssh andy@web3.goba.mobi'
alias redis='redis-server /usr/local/etc/redis.conf'
alias tree='nocorrect tree'
alias pwdcp='pwd | tr -d "\n" | pbcopy'
alias grep='ack'
alias st='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias c='clear'

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/andymatthews/.rvm/gems/ruby-1.9.3-p125/bin:/Users/andymatthews/.rvm/gems/ruby-1.9.3-p125@global/bin:/Users/andymatthews/.rvm/rubies/ruby-1.9.3-p125/bin:/Users/andymatthews/.rvm/bin:/usr/games:/Users/andymatthews/.rvm/bin

# everything below here came from ~/.bash_profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

. /usr/local/bin/z.sh

function server(){
	local port="${1:-8000}"
	open "http://localhost:${port}/"
	python -m SimpleHTTPServer "$port"
}
function md(){
	mkdir $1 && cd $1
}
function startEmma(){
	cd ~/VirtualMachines/Emma.vagrant
	vagrant up
}
function deepThought(){
	curl -s http://andymatthews.net/code/deepthoughts/get.cfm | say
}
function pgLogin() {
	psql -U postgres -h emma.int emma
}
function catSql() {
	# pass in an optional number of files to cat together
	cd ~/Dev/emma/python/emma/schema_changes
	local count="${1:-6}"
	find [0-9]*.sql | tail -n $count | xargs cat | psql -U postgres -h emma.int emma
}
function postgres() {
	psql -U postgres -h emma.int emma
}
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
