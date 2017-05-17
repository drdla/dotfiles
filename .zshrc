# Path to your oh-my-zsh installation.
export ZSH=/Users/dominikrodler/.oh-my-zsh

export PATH="$HOME/.yarn/bin:$PATH"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jreese"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(osx history brew git npm sublime vagrant extract django docker pyenv)

# User configuration

export PATH="/Users/dominikrodler/.rvm/gems/ruby-2.0.0-p247/bin:/Users/dominikrodler/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/dominikrodler/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/dominikrodler/.rvm/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH="$PATH":/Users/dominikrodler/go/bin

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# zgen load MichaelAquilina/zsh-autoswitch-virtualenv

# GO working directory
export GOPATH=$HOME/go

alias ll="ls -lA"
alias gh="cd ~/github"
alias srv="php -S localhost:3000 & open http://localhost:3000"

# PromoPlanner environment
alias om="cd ~/github/offer-manager && source dev.env"

# Start PromoPlanner applications individually
alias start-celery="cd ~/github/offer-manager && source dev.env && celery -A offer_manager worker -l info"
alias start-sfx="cd ~/github/offer-manager && source dev.env && python manage.py side_effects"
alias start-omproxy="cd ~/github/offer-manager && source dev.env && ./om-proxy-osx"
alias start-om="cd ~/github/offer-manager && source dev.env && gunicorn -b 0.0.0.0:8001 --pythonpath $PWD wsgi"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dominikrodler/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/dominikrodler/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dominikrodler/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/dominikrodler/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
