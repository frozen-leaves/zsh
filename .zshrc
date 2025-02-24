# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# AUTO UPDATE
DISABLE_UPDATE_PROMPT="true"

plugins=(git docker docker-compose zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# External Alias Files
if [ -f ~/.zsh_configs/gitalias ]; then
    source ~/.zsh_configs/gitalias
else
    print "Git aliases not found - skipping"
fi

if [ -f ~/.zsh_configs/pythonalias ]; then
    source ~/.zsh_configs/pythonalias
else
    print "Python aliases not found - skipping"
fi

if [ -f ~/.zsh_configs/sailalias ]; then
    source ~/.zsh_configs/sailalias
else
    print "Sail aliases not found - skipping"
fi

if [ -f ~/.zsh_configs/personalalias ]; then
    source ~/.zsh_configs/personalalias
else
    print "Personal aliases not found - skipping"
fi
