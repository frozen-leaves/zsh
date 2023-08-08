# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# AUTO UPDATE
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker docker-compose zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# External Alias Files
if [ -f ~/.zsh/gitalias ]; then
    source ~/.zsh_configs/gitalias
else
    print "Git aliases not found - skipping"
fi

if [ -f ~/.zsh/pythonalias ]; then
    source ~/.zsh_configs/pythonalias
else
    print "Python aliases not found - skipping"
fi

if [ -f ~/.zsh/sailalias ]; then
    source ~/.zsh_configs/sailalias
else
    print "Sail aliases not found - skipping"
fi

if [ -f ~/.zsh/personalalias ]; then
    source ~/.zsh_configs/personalalias
else
    print "Personal aliases not found - skipping"
fi
