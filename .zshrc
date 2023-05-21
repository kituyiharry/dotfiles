#zmodload zsh/zprof
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/harrykwakuloba/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
plugins=(git fzf shrink-path)
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/lib/lua/:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/readline/lib"
export LDFLAGS="$LDFLAGS -L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"
export CPPFLAGS="$CPPFLAGS -I/opt/homebrew/opt/readline/include"
# #export LDFLAGS="$LDFLAGS:-L/opt/homebrew/opt/luajit-openresty/lib"
# #export CPPFLAGS="$CPPFLAGS:-I/opt/homebrew/opt/luajit-openresty/include"
# export LDFLAGS="$LDFLAGS:-L/opt/homebrew/opt/llvm/lib -Wl,-rpath,/opt/homebrew/opt/llvm/lib"
# export LDFLAGS="$LDFLAGS:-L/opt/homebrew/opt/llvm/lib"
# export CPPFLAGS="$CPPFLAGS:-I/opt/homebrew/opt/llvm/include"
# export CPPFLAGS="$CPPFLAGS:-I/opt/homebrew/opt/llvm/include/clang-c"
# export CFLAGS="$CPPFLAGS"
#export DOCKER_HOST="ssh://harrykwakuloba@unix:///Users/harrykwakuloba/.docker/run/docker-cli-api.sock"
export DOCKER_HOST="unix:///Users/harrykwakuloba/.docker/run/docker.sock"
#export DOCKER_HOST="unix:///var/run/docker.sock"


#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init --path)"
#eval "$(pyenv init -)"

[ -e ~/.profile ] && . ~/.profile
[ -f ~/.oh-my-zsh/plugins/fzf/fzf.plugin.zsh ] && source ~/.oh-my-zsh/plugins/fzf/fzf.plugin.zsh
export PATH="/opt/homebrew/opt/ncurses/bin:$PATH"
#eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
if (command -v brew && brew list --formula | grep -c vim ) > /dev/null 2>&1; then
    alias vim="$(brew --prefix vim)/bin/vim"
    alias bison="$(brew --prefix bison)/bin/bison"
fi

export PATH="/Users/harrykwakuloba/.local/share/gem/ruby/3.0.0/bin:$PATH"
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/php@7.2/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.2/sbin:$PATH"
export PATH="/Users/harrykwakuloba/Developer/Flutter/flutter/bin:$PATH"

#zsh_os_arch(){
#  echo -n '\uf300'
#  #echo -n '🐦'
#}
POWERLEVEL9K_CUSTOM_OS_ARCH="zsh_os_arch"
POWERLEVEL9K_LINUX_ICON='\uE712'
POWERLEVEL9K_VCS_GIT_ICON='\uF406 '
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B4'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B6'
POWERLEVEL9K_CONTEXT_TEMPLATE="@%n"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='251'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='000'
POWERLEVEL9K_DIR_HOME_BACKGROUND='231'
POWERLEVEL9K_DIR_HOME_FOREGROUND='000'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='231'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='000'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='232'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='red'
POWERLEVEL9K_STATUS_OK_BACKGROUND='255'
POWERLEVEL9K_STATUS_OK_FOREGROUND='green'
POWERLEVEL9K_OS_ICON_FOREGROUND='255'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_CUSTOM_OS_ARCH_BACKGROUND="black"
POWERLEVEL9K_CUSTOM_OS_ARCH_FOREGROUND="255"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon custom_os_arch_joined context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time_joined)
#ZSH_THEME="agnoster"
#ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="bullet-train"
#ZSH_THEME="classyTouch_oh-my-zsh/classyTouch"

#FZF Completion flags
# Use ~~ as the trigger sequence instead of the default **
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
export FZF_COMPLETION_TRIGGER='~~'

# Options to fzf command
export FZF_COMPLETION_OPTS='+c -x'
#export FZF_BASE="/opt/homebrew/bin/"

# Use ag instead of the default find command for listing path candidates.
# - The first argument to the function is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
# - ag only lists files, so we use with-dir script to augment the output
_fzf_compgen_path() {
  #ag -g "" "$1" | with-dir "$1"
  ag -g "" "$1" # | with-dir "$1"
}

# Use ag to generate the list for directory completion
_fzf_compgen_dir() {
  #ag -g "" "$1" | only-dir "$1"
  ag -g "" "$1" # | only-dir "$1"
}

alias suroot='sudo -E -s'
alias vf='vim $(fzf)'
alias gvf='gvim $(fzf)'
alias nvf='nvim $(fzf)'
alias cat='bat'
#alias ida64="/Applications/IDA\ Freeware\ 7.6/ida64.app/Contents/MacOS/ida64"
alias mergepdf='gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite '
alias gource_to_mp4='gource -s .06 -1280x720 --auto-skip-seconds .1 --multi-sampling --stop-at-end --key --highlight-users --hide mouse,progress --file-idle-time 0 --max-files 0 --background-colour 000000 --font-size 22 --title "Harry K | Fullstack" --output-ppm-stream - --output-framerate 30 | ffmpeg -y -r 24 -f image2pipe -vcodec ppm -i - -b 65536k gitlog.mp4'
export EDITOR=vim
setopt prompt_subst
export PS1='%n@%m $(shrink_path -f)>'
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export GOPATH="/opt/homebrew/opt/go@1.17"
export GOBIN="$GOPATH/bin"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/anaconda3/bin/:$PATH"
export PATH="$GOBIN:$PATH"
export PATH="/Users/harrykwakuloba/.gem/ruby/3.1.0/bin:$PATH"
export PATH="$GOPATH:$PATH"
export PATH="$PATH"

# opam configuration
test -r /Users/harrykwakuloba/.opam/opam-init/init.zsh && . /Users/harrykwakuloba/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
#export TERM=xterm-256color-italic.terminfo
#
export PKG_CONFIG_PATH="/opt/homebrew/Cellar/ncurses/6.2/lib/pkgconfig/"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/opt/homebrew/opt/zlib/lib/pkgconfig/"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/opt/homebrew/lib/pkgconfig/"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/harrykwakuloba/Developer/Triage/gcloud-cli/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/harrykwakuloba/Developer/Triage/gcloud-cli/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/harrykwakuloba/Developer/Triage/gcloud-cli/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/harrykwakuloba/Developer/Triage/gcloud-cli/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/opt/homebrew/opt/mongodb-community@5.0/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
#zprof
