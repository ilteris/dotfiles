setopt promptsubst
autoload -U promptinit
promptinit
prompt grb

autoload -U compinit
compinit

# Add paths that should have been there by default
export PATH=$HOME/bin:/usr/local/git/current/bin:/usr/local/sbin:/usr/local/bin:${PATH}
export FCEDIT=`which vim`
set -o vi
# Appends every command to the history file once it is executed
setopt inc_append_history
 # Reloads the history whenever you use it
setopt share_history

alias ls='ls -G'
alias ll='ls -lG'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

#p4
# . $HOME/.bagpipe/setup.sh $HOME/.bagpipe ilteriscloudtop.c.googlers.com "corp-ssh-helper -relay=sup-ssh-relay.corp.google.com --stderrthreshold=INFO %h %p"

# export USER_CONFIG=$HOME/.zprofile
# echo >> $USER_CONFIG
# echo . $HOME/.bagpipe/setup.sh $HOME/.bagpipe ilteriscloudtop.c.googlers.com  >> $USER_CONFIG
# export PATH=$HOME/bin:$PATH >> $USER_CONFIG
# source $USER_CONFIG
# echo $BAGPIPE_DIR


# Unbreak history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# Unbreak Python's error-prone .pyc file generation
export PYTHONDONTWRITEBYTECODE=1

export WORDCHARS='*?[]~&;!$%^<>'

export ACK_COLOR_MATCH='red'

# # ACTUAL CUSTOMIZATION OH NOES!
# gd() { git diff $* | view -; }
# gdc() { gd --cached $*; }
# alias pygrep="grep --include='*.py' $*"
# alias rbgrep="grep --include='*.rb' $*"
# alias r=rails
# alias t="script/tests $*"
# alias sr="screen -r"
# alias :q="echo YOU FAIL"

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

export EDITOR=/usr/bin/vim

export PATH=$HOME/flutter/bin:$PATH
export PATH=$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/platform-tools:$PATH

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
BASE16_SCHEME="3024"
 BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
 [[ -s $BASE16_SHELL  ]] && . $BASE16_SHELL




# The next line updates PATH for the Google Cloud SDK.
source "$HOME/google-cloud-sdk/path.zsh.inc"

# The next line enables shell command completion for gcloud.
source "$HOME/google-cloud-sdk/completion.zsh.inc"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source /Library/GoogleCorpSupport/srcfs/shell_completion/enable_completion.sh
# export REMOTE_TSSERVER_HOSTNAME=ilteriscloudtop.c.googlers.com
export ANDROID_HOME=/Users/ikaplan/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=/Library/TeX/texbin:$PATH
export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_181, x86_64`

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ikaplan/Desktop/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/ikaplan/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ikaplan/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/ikaplan/Desktop/google-cloud-sdk/completion.zsh.inc'; fi
