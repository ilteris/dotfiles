setopt promptsubst
autoload -U promptinit
promptinit
prompt grb

autoload -U compinit
compinit

# Add paths that should have been there by default
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/Library/Frameworks/Python.framework/Versions/2.6/bin:/opt/local/lib/mysql5/bin:$PATH
export PATH=/usr/local/sbin:/usr/local/bin:${PATH}

# Appends every command to the history file once it is executed 
setopt inc_append_history 
 # Reloads the history whenever you use it
setopt share_history


alias ls='ls -G'
alias ll='ls -lG'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# Unbreak history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# Unbreak Python's error-prone .pyc file generation
export PYTHONDONTWRITEBYTECODE=1

export WORDCHARS='*?[]~&;!$%^<>'

export ACK_COLOR_MATCH='red'

# ACTUAL CUSTOMIZATION OH NOES!
gd() { git diff $* | view -; }
gdc() { gd --cached $*; }
alias pygrep="grep --include='*.py' $*"
alias rbgrep="grep --include='*.rb' $*"
alias r=rails
alias t="script/tests $*"
alias sr="screen -r"
alias :q="echo YOU FAIL"

activate_virtualenv() {
    if [ -f env/bin/activate ]; then . env/bin/activate;
    elif [ -f ../env/bin/activate ]; then . ../env/bin/activate;
    elif [ -f ../../env/bin/activate ]; then . ../../env/bin/activate;
    elif [ -f ../../../env/bin/activate ]; then . ../../../env/bin/activate;
    fi
}

python_module_dir () {
    echo "$(python -c "import os.path as _, ${1}; \
        print _.dirname(_.realpath(${1}.__file__[:-1]))"
        )"
}

# Originally from Jonathan Penn, with modifications by Gary Bernhardt
function whodoneit() {
    (set -e &&
        for x in $(git grep -I --name-only $1); do
            git blame -f -- $x | grep $1;
        done
    )
}

export EDITOR=/usr/local/bin/vim

bindkey '^R' history-incremental-search-backward

 # enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi
 
# Base16 Shell
BASE16_SCHEME="ocean"
 BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
 [[ -s $BASE16_SHELL  ]] && . $BASE16_SHELL



