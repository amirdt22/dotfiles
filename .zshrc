export PATH=$PATH:~/scripts:$PATH:~/go/bin

# oh-my-zsh installation https://ohmyz.sh/
export ZSH="/Users/amir/.oh-my-zsh"

# don't show username in prompt when it's me
DEFAULT_USER=amir

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# this is based on agnoster but requires additional fonts for special characters
# install: SourceCodePro+Powerline+Awesome+Regular.ttf
# iterm2: Preferences -> Profiles -> * -> Text
# terminal: Preferences -> Profiles -> * -> Text

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# zsh-nvm plugin with https://github.com/lukechilds/zsh-nvm/pull/55 applied
export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=true

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker aws npm web-search jhipster zsh-nvm)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="atom ~/.oh-my-zsh"
alias mysqlv="mysql -u valuation5 valuation5"
alias mysqlva="mysql -u valuation5 valuation5_ao"
alias gv="cd ~/bizequity/git/valuation5"
alias ports="sudo lsof -iTCP -sTCP:LISTEN -n -P"
alias updatedb='sudo /usr/libexec/locate.updatedb'

export AWS_DEFAULT_REGION=us-east-1
export AWS_DEFAULT_OUTPUT=json

export GOPATH=$HOME/src/golang/go3p
export PATH=$PATH:$GOPATH/bin
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="$PATH:/Users/amir/intellij/bin"

export PATH="~/Library/Python/3.6/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

source ~/.bash_bizequity

bindkey -v
bindkey '^R' history-incremental-search-backward
