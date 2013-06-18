# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="sunshine"

# include virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

# Example aliases
alias tree='nocorrect tree'
alias fab='nocorrect fab'
alias pwdcp='pwd | tr -d "\n" | pbcopy'
alias st='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias c='clear'
alias flushdns='dscacheutil -flushcache'
alias v='vagrant'
alias delpyc="find . -name '*.pyc' -delete"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=~/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# everything below here came from ~/.bash_profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

. /usr/local/bin/z.sh

function server(){
	local port="${1:-8000}"
	open "http://0.0.0.0:${port}/"
	python -m SimpleHTTPServer "$port"
}
function md(){
	mkdir $1 && cd $1
}
function startEmma(){
	cd ~/VirtualMachines/LocalEmma/ 
	vagrant up
}
function startSocial(){
	cd ~/VirtualMachines/social_api_vm
	vagrant up
}
function deepThought(){
	curl -s http://andymatthews.net/code/deepthoughts/get.cfm | say
}
function pgLogin() {
	psql -U postgres -h emma.int emma
}
function aws() {
	ssh -i amazonec2.pem ubuntu@107.22.224.216	
}
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NODE_PATH=/usr/local/lib/node_modules/

## pathing for LocalEmma
export LOCALEMMA_EMMA_BASE_DIR=/Users/amatthews/Dev/emma/
export LOCALEMMA_EMMADMIN_BASE_DIR=/Users/amatthews/Dev/admin/
export LOCALEMMA_AUDIENCE_BASE_DIR=/Users/amatthews/Dev/
