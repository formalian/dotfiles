# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# OMZ Plugins

if [[ $TERM_PROGRAM != tmux ]] then
    plugins=(
	    fzf
	    git 
	    pip
    	python
	    yarn 
	    z
        zsh-autosuggestions
	    zsh-syntax-highlighting 
    )
else
    plugins=(
	    fzf
	    git 
    	pip
    	python
    	yarn 
    	z
    	zsh-syntax-highlighting 
    )
fi

source $ZSH/oh-my-zsh.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Load environment when tmux is not started yet
if [[ $TERM_PROGRAM != tmux ]]; then

    # Environment variables
    export FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --follow --glob "!.git/*"'
    export FZF_DEFAULT_OPTS="--preview 'batcat --style=numbers --color=always --line-range :500 {}'"
    export PYENV_ROOT="$HOME/.pyenv"
    export PYENV_VIRTUALENV_DISABLE_PROMPT=1
    export PATH="$HOME/.scripts:$PATH"


    # Pyenv
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv init --path)"

fi

# Nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
    

# Aliases
alias vim="nvim"
alias ls="exa --group-directories-first --icons"
alias bat="batcat"
alias fp="fzf --preview 'batcat --style=numbers --color=always --line-range :500 {}'"

# Start tmux by default
if [[ -z "$TMUX" ]]; then
    tat
fi

# Starship prompt
eval "$(starship init zsh)"
