# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="sunshine"

# Example aliases
alias web3='ssh andy@web3.goba.mobi'
alias redis='redis-server /usr/local/etc/redis.conf'
alias useredis='redis-cli'
alias tree='nocorrect tree'
alias pwdcp='pwd | tr -d "\n" | pbcopy'
alias grep='ack'
alias st='nocorrect subl'
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
function jqmbp(){
	git clone https://github.com/commadelimited/jQuery-Mobile-Boilerplate.git .
	server
}
function md(){
	mkdir $1 && cd $1
}
function to(){
	touch $1 && st $1
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
