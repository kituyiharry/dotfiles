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
#export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/lib/lua/:$PATH"
#export LDFLAGS="-L/opt/homebrew/opt/readline/lib"
#export LDFLAGS="$LDFLAGS -L/opt/homebrew/opt/zlib/lib"
#export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"
#export CPPFLAGS="$CPPFLAGS -I/opt/homebrew/opt/readline/include"
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
#export PATH="/Users/harrykwakuloba/Developer/Flutter/flutter/bin:$PATH"

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
export FZF_DEFAULT_OPTS='--height 40% --reverse --border --bind "alt-a:select-all,alt-d:deselect-all"'
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
alias gmake='/opt/homebrew/opt/make/libexec/gnubin/make'
#alias ida64="/Applications/IDA\ Freeware\ 7.6/ida64.app/Contents/MacOS/ida64"
alias mergepdf='gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite '
alias gource_to_mp4='gource -s .06 -1280x720 --auto-skip-seconds .1 --multi-sampling --stop-at-end --key --highlight-users --hide mouse,progress --file-idle-time 0 --max-files 0 --background-colour 000000 --font-size 22 --title "Harry K | Fullstack" --output-ppm-stream - --output-framerate 30 | ffmpeg -y -r 24 -f image2pipe -vcodec ppm -i - -b 65536k gitlog.mp4'
export EDITOR=nvim
setopt prompt_subst
export PS1='%n@%m $(shrink_path -f)>'
#source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/opt/powerlevel10k/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

export PKG_CONFIG_PATH="/opt/homebrew/Cellar/ncurses/6.2/lib/pkgconfig/"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/opt/homebrew/opt/zlib/lib/pkgconfig/"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/opt/homebrew/lib/pkgconfig/"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export GOPATH="/opt/homebrew/opt/go@1.20/"
export GOBIN="$GOPATH/bin"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
#export PATH="/opt/homebrew/anaconda3/bin/:$PATH"
export PATH="$GOBIN:$PATH"
export PATH="/Users/harrykwakuloba/.gem/ruby/3.1.0/bin:$PATH"
export PATH="$GOPATH:$PATH"
export PATH="$PATH:$PKG_CONFIG_PATH"

# opam configuration
test -r /Users/harrykwakuloba/.opam/opam-init/init.zsh && . /Users/harrykwakuloba/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
#export TERM=xterm-256color-italic.terminfo
export TERM=screen-256color
#

export PKG_CONFIG_PATH="/opt/homebrew/Cellar/ncurses/6.2/lib/pkgconfig/"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/opt/homebrew/opt/zlib/lib/pkgconfig/"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/opt/homebrew/lib/pkgconfig/"


# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/harrykwakuloba/Developer/Triage/gcloud-cli/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/harrykwakuloba/Developer/Triage/gcloud-cli/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/harrykwakuloba/Developer/Triage/gcloud-cli/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/harrykwakuloba/Developer/Triage/gcloud-cli/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
#export PATH="~/.ghcup/bin/:~/.ghcup/bin/ghc:$PATH"
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

#export PATH="/opt/homebrew/opt/mongodb-community@5.0/bin:$PATH"
#export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
#export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
#zprof

# bun completions
[ -s "/Users/harrykwakuloba/.bun/_bun" ] && source "/Users/harrykwakuloba/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$BUN_INSTALL/bin:$PATH"


function frg {
  result=$(rg --ignore-case --color=always --line-number --no-heading "$@" |
    fzf --ansi \
    --color 'hl:-1:underline,hl+:-1:underline:reverse' \
    --delimiter ':' \
    --preview "bat --color=always {1} --theme='Solarized (light)' --highlight-line {2}" \
    --preview-window 'up,60%,border-bottom,+{2}+3/3,~3')
      file=${result%%:*}
      linenumber=$(echo "${result}" | cut -d: -f2)
      if [[ -n "$file" ]]; then
        $EDITOR +"${linenumber}" "$file"
      fi
    }

## Completions from sg, run  `sg completions`

#compdef sg

autoload -U is-at-least

_sg() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_sg_commands" \
"*::: :->ast-grep" \
&& ret=0
    case $state in
    (ast-grep)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:sg-command-$line[1]:"
        case $line[1] in
            (run)
_arguments "${_arguments_options[@]}" \
'-p+[AST pattern to match]:PATTERN: ' \
'--pattern=[AST pattern to match]:PATTERN: ' \
'-r+[String to replace the matched AST node]:FIX: ' \
'--rewrite=[String to replace the matched AST node]:FIX: ' \
'-l+[The language of the pattern. Supported languages are\: \[Bash, C, Cpp, CSharp, Css, Dart, Elixir, Go, Html, Java, JavaScript, Json, Kotlin, Lua, Php, Python, Ruby, Rust, Scala, Swift, Tsx, TypeScript\]]:LANG: ' \
'--lang=[The language of the pattern. Supported languages are\: \[Bash, C, Cpp, CSharp, Css, Dart, Elixir, Go, Html, Java, JavaScript, Json, Kotlin, Lua, Php, Python, Ruby, Rust, Scala, Swift, Tsx, TypeScript\]]:LANG: ' \
'*--no-ignore=[Do not respect hidden file system or ignore files (.gitignore, .ignore, etc.)]:FILE_TYPE:((hidden\:"Search hidden files and directories. By default, hidden files and directories are skipped"
dot\:"Don'\''t respect .ignore files. This does *not* affect whether ast-grep will ignore files and directories whose names begin with a dot. For that, use --no-ignore hidden"
exclude\:"Don'\''t respect ignore files that are manually configured for the repository such as git'\''s '\''.git/info/exclude'\''"
global\:"Don'\''t respect ignore files that come from "global" sources such as git'\''s \`core.excludesFile\` configuration option (which defaults to \`\$HOME/.config/git/ignore\`)"
parent\:"Don'\''t respect ignore files (.gitignore, .ignore, etc.) in parent directories"
vcs\:"Don'\''t respect version control ignore files (.gitignore, etc.). This implies --no-ignore parent for VCS files. Note that .ignore files will continue to be respected"))' \
'(-i --interactive)--json=[Output matches in structured JSON ]' \
'--color=[Controls output color]:WHEN:((auto\:"Try to use colors, but don'\''t force the issue. If the output is piped to another program, or the console isn'\''t available on Windows, or if TERM=dumb, or if \`NO_COLOR\` is defined, for example, then don'\''t use colors"
always\:"Try very hard to emit colors. This includes emitting ANSI colors on Windows if the console API is unavailable (not implemented yet)"
ansi\:"Ansi is like Always, except it never tries to use anything other than emitting ANSI color codes"
never\:"Never emit colors"))' \
'--heading=[Controls whether to print the file name as heading]:WHEN:((auto\:"Print heading for terminal tty but not for piped output"
always\:"Always print heading regardless of output type"
never\:"Never print heading regardless of output type"))' \
'(-C --context)-A+[Show NUM lines after each match]:NUM: ' \
'(-C --context)--after=[Show NUM lines after each match]:NUM: ' \
'(-C --context)-B+[Show NUM lines before each match]:NUM: ' \
'(-C --context)--before=[Show NUM lines before each match]:NUM: ' \
'-C+[Show NUM lines around each match]:NUM: ' \
'--context=[Show NUM lines around each match]:NUM: ' \
'--debug-query[Print query pattern'\''s tree-sitter AST. Requires lang be set explicitly]' \
'--stdin[Enable search code from StdIn]' \
'-i[Start interactive edit session]' \
'--interactive[Start interactive edit session]' \
'-U[Apply all rewrite without confirmation if true]' \
'--update-all[Apply all rewrite without confirmation if true]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::paths -- The paths to search. You can provide multiple paths separated by spaces:_files' \
&& ret=0
;;
(scan)
_arguments "${_arguments_options[@]}" \
'-c+[Path to ast-grep root config, default is sgconfig.yml]:CONFIG_FILE:_files' \
'--config=[Path to ast-grep root config, default is sgconfig.yml]:CONFIG_FILE:_files' \
'-r+[Scan the codebase with the single rule located at the path RULE_FILE]:RULE_FILE:_files' \
'--rule=[Scan the codebase with the single rule located at the path RULE_FILE]:RULE_FILE:_files' \
'(-r --rule)--inline-rules=[Scan the codebase with a rule defined by the provided RULE_TEXT]:RULE_TEXT: ' \
'(-r --rule)--filter=[Scan the codebase with rules with ids matching REGEX]:REGEX: ' \
'(--json -i --interactive)--format=[Output warning/error messages in GitHub Action format]:FORMAT:(github)' \
'(--json)--report-style=[]:REPORT_STYLE:((rich\:"Output a richly formatted diagnostic, with source code previews"
medium\:"Output a condensed diagnostic, with a line number, severity, message and notes (if any)"
short\:"Output a short diagnostic, with a line number, severity, and message"))' \
'*--no-ignore=[Do not respect hidden file system or ignore files (.gitignore, .ignore, etc.)]:FILE_TYPE:((hidden\:"Search hidden files and directories. By default, hidden files and directories are skipped"
dot\:"Don'\''t respect .ignore files. This does *not* affect whether ast-grep will ignore files and directories whose names begin with a dot. For that, use --no-ignore hidden"
exclude\:"Don'\''t respect ignore files that are manually configured for the repository such as git'\''s '\''.git/info/exclude'\''"
global\:"Don'\''t respect ignore files that come from "global" sources such as git'\''s \`core.excludesFile\` configuration option (which defaults to \`\$HOME/.config/git/ignore\`)"
parent\:"Don'\''t respect ignore files (.gitignore, .ignore, etc.) in parent directories"
vcs\:"Don'\''t respect version control ignore files (.gitignore, etc.). This implies --no-ignore parent for VCS files. Note that .ignore files will continue to be respected"))' \
'(-i --interactive)--json=[Output matches in structured JSON ]' \
'--color=[Controls output color]:WHEN:((auto\:"Try to use colors, but don'\''t force the issue. If the output is piped to another program, or the console isn'\''t available on Windows, or if TERM=dumb, or if \`NO_COLOR\` is defined, for example, then don'\''t use colors"
always\:"Try very hard to emit colors. This includes emitting ANSI colors on Windows if the console API is unavailable (not implemented yet)"
ansi\:"Ansi is like Always, except it never tries to use anything other than emitting ANSI color codes"
never\:"Never emit colors"))' \
'--stdin[Enable search code from StdIn]' \
'-i[Start interactive edit session]' \
'--interactive[Start interactive edit session]' \
'-U[Apply all rewrite without confirmation if true]' \
'--update-all[Apply all rewrite without confirmation if true]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'*::paths -- The paths to search. You can provide multiple paths separated by spaces:_files' \
&& ret=0
;;
(test)
_arguments "${_arguments_options[@]}" \
'-c+[Path to the root ast-grep config YAML]:CONFIG:_files' \
'--config=[Path to the root ast-grep config YAML]:CONFIG:_files' \
'-t+[the directories to search test YAML files]:TEST_DIR:_files' \
'--test-dir=[the directories to search test YAML files]:TEST_DIR:_files' \
'--snapshot-dir=[Specify the directory name storing snapshots. Default to __snapshots__]:SNAPSHOT_DIR:_files' \
'-f+[Only run rule test cases that matches REGEX]:REGEX: ' \
'--filter=[Only run rule test cases that matches REGEX]:REGEX: ' \
'(-U --update-all)--skip-snapshot-tests[Only check if the test code is valid, without checking rule output. Turn it on when you want to ignore the output of rules. Conflicts with --update-all]' \
'-U[Update the content of all snapshots that have changed in test. Conflicts with --skip-snapshot-tests]' \
'--update-all[Update the content of all snapshots that have changed in test. Conflicts with --skip-snapshot-tests]' \
'-i[Start an interactive review to update snapshots selectively]' \
'--interactive[Start an interactive review to update snapshots selectively]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(new)
_arguments "${_arguments_options[@]}" \
'-l+[The language of the item to create]:LANG: ' \
'--lang=[The language of the item to create]:LANG: ' \
'-b+[Create new project/items in the folder specified by this argument]:BASE_DIR:_files' \
'--base-dir=[Create new project/items in the folder specified by this argument]:BASE_DIR:_files' \
'-y[Accept all default options without interactive input during creation]' \
'--yes[Accept all default options without interactive input during creation]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::name -- The id of the item to create:' \
":: :_sg__new_commands" \
"*::: :->new" \
&& ret=0

    case $state in
    (new)
        words=($line[2] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:sg-new-command-$line[2]:"
        case $line[2] in
            (project)
_arguments "${_arguments_options[@]}" \
'-l+[The language of the item to create]:LANG: ' \
'--lang=[The language of the item to create]:LANG: ' \
'-b+[Create new project/items in the folder specified by this argument]:BASE_DIR:_files' \
'--base-dir=[Create new project/items in the folder specified by this argument]:BASE_DIR:_files' \
'-y[Accept all default options without interactive input during creation]' \
'--yes[Accept all default options without interactive input during creation]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::name -- The id of the item to create:' \
&& ret=0
;;
(rule)
_arguments "${_arguments_options[@]}" \
'-l+[The language of the item to create]:LANG: ' \
'--lang=[The language of the item to create]:LANG: ' \
'-b+[Create new project/items in the folder specified by this argument]:BASE_DIR:_files' \
'--base-dir=[Create new project/items in the folder specified by this argument]:BASE_DIR:_files' \
'-y[Accept all default options without interactive input during creation]' \
'--yes[Accept all default options without interactive input during creation]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::name -- The id of the item to create:' \
&& ret=0
;;
(test)
_arguments "${_arguments_options[@]}" \
'-l+[The language of the item to create]:LANG: ' \
'--lang=[The language of the item to create]:LANG: ' \
'-b+[Create new project/items in the folder specified by this argument]:BASE_DIR:_files' \
'--base-dir=[Create new project/items in the folder specified by this argument]:BASE_DIR:_files' \
'-y[Accept all default options without interactive input during creation]' \
'--yes[Accept all default options without interactive input during creation]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::name -- The id of the item to create:' \
&& ret=0
;;
(util)
_arguments "${_arguments_options[@]}" \
'-l+[The language of the item to create]:LANG: ' \
'--lang=[The language of the item to create]:LANG: ' \
'-b+[Create new project/items in the folder specified by this argument]:BASE_DIR:_files' \
'--base-dir=[Create new project/items in the folder specified by this argument]:BASE_DIR:_files' \
'-y[Accept all default options without interactive input during creation]' \
'--yes[Accept all default options without interactive input during creation]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::name -- The id of the item to create:' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
":: :_sg__new__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:sg-new-help-command-$line[1]:"
        case $line[1] in
            (project)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(rule)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(test)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(util)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(lsp)
_arguments "${_arguments_options[@]}" \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(completions)
_arguments "${_arguments_options[@]}" \
'-h[Print help]' \
'--help[Print help]' \
'::shell -- Output the completion file for given shell. If not provided, shell flavor will be inferred from environment:(bash elvish fish powershell zsh)' \
&& ret=0
;;
(docs)
_arguments "${_arguments_options[@]}" \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
":: :_sg__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:sg-help-command-$line[1]:"
        case $line[1] in
            (run)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(scan)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(test)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(new)
_arguments "${_arguments_options[@]}" \
":: :_sg__help__new_commands" \
"*::: :->new" \
&& ret=0

    case $state in
    (new)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:sg-help-new-command-$line[1]:"
        case $line[1] in
            (project)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(rule)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(test)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(util)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
(lsp)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(completions)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(docs)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
}

(( $+functions[_sg_commands] )) ||
_sg_commands() {
    local commands; commands=(
'run:Run one time search or rewrite in command line. (default command)' \
'scan:Scan and rewrite code by configuration' \
'test:Test ast-grep rules' \
'new:Create new ast-grep project or items like rules/tests' \
'lsp:Start language server' \
'completions:Generate shell completion script' \
'docs:Generate rule docs for current configuration. (Not Implemented Yet)' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'sg commands' commands "$@"
}
(( $+functions[_sg__completions_commands] )) ||
_sg__completions_commands() {
    local commands; commands=()
    _describe -t commands 'sg completions commands' commands "$@"
}
(( $+functions[_sg__help__completions_commands] )) ||
_sg__help__completions_commands() {
    local commands; commands=()
    _describe -t commands 'sg help completions commands' commands "$@"
}
(( $+functions[_sg__docs_commands] )) ||
_sg__docs_commands() {
    local commands; commands=()
    _describe -t commands 'sg docs commands' commands "$@"
}
(( $+functions[_sg__help__docs_commands] )) ||
_sg__help__docs_commands() {
    local commands; commands=()
    _describe -t commands 'sg help docs commands' commands "$@"
}
(( $+functions[_sg__help_commands] )) ||
_sg__help_commands() {
    local commands; commands=(
'run:Run one time search or rewrite in command line. (default command)' \
'scan:Scan and rewrite code by configuration' \
'test:Test ast-grep rules' \
'new:Create new ast-grep project or items like rules/tests' \
'lsp:Start language server' \
'completions:Generate shell completion script' \
'docs:Generate rule docs for current configuration. (Not Implemented Yet)' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'sg help commands' commands "$@"
}
(( $+functions[_sg__help__help_commands] )) ||
_sg__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'sg help help commands' commands "$@"
}
(( $+functions[_sg__new__help_commands] )) ||
_sg__new__help_commands() {
    local commands; commands=(
'project:Create an new project by scaffolding' \
'rule:Create a new rule' \
'test:Create a new test case' \
'util:Create a new global utility rule' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'sg new help commands' commands "$@"
}
(( $+functions[_sg__new__help__help_commands] )) ||
_sg__new__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'sg new help help commands' commands "$@"
}
(( $+functions[_sg__help__lsp_commands] )) ||
_sg__help__lsp_commands() {
    local commands; commands=()
    _describe -t commands 'sg help lsp commands' commands "$@"
}
(( $+functions[_sg__lsp_commands] )) ||
_sg__lsp_commands() {
    local commands; commands=()
    _describe -t commands 'sg lsp commands' commands "$@"
}
(( $+functions[_sg__help__new_commands] )) ||
_sg__help__new_commands() {
    local commands; commands=(
'project:Create an new project by scaffolding' \
'rule:Create a new rule' \
'test:Create a new test case' \
'util:Create a new global utility rule' \
    )
    _describe -t commands 'sg help new commands' commands "$@"
}
(( $+functions[_sg__new_commands] )) ||
_sg__new_commands() {
    local commands; commands=(
'project:Create an new project by scaffolding' \
'rule:Create a new rule' \
'test:Create a new test case' \
'util:Create a new global utility rule' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'sg new commands' commands "$@"
}
(( $+functions[_sg__help__new__project_commands] )) ||
_sg__help__new__project_commands() {
    local commands; commands=()
    _describe -t commands 'sg help new project commands' commands "$@"
}
(( $+functions[_sg__new__help__project_commands] )) ||
_sg__new__help__project_commands() {
    local commands; commands=()
    _describe -t commands 'sg new help project commands' commands "$@"
}
(( $+functions[_sg__new__project_commands] )) ||
_sg__new__project_commands() {
    local commands; commands=()
    _describe -t commands 'sg new project commands' commands "$@"
}
(( $+functions[_sg__help__new__rule_commands] )) ||
_sg__help__new__rule_commands() {
    local commands; commands=()
    _describe -t commands 'sg help new rule commands' commands "$@"
}
(( $+functions[_sg__new__help__rule_commands] )) ||
_sg__new__help__rule_commands() {
    local commands; commands=()
    _describe -t commands 'sg new help rule commands' commands "$@"
}
(( $+functions[_sg__new__rule_commands] )) ||
_sg__new__rule_commands() {
    local commands; commands=()
    _describe -t commands 'sg new rule commands' commands "$@"
}
(( $+functions[_sg__help__run_commands] )) ||
_sg__help__run_commands() {
    local commands; commands=()
    _describe -t commands 'sg help run commands' commands "$@"
}
(( $+functions[_sg__run_commands] )) ||
_sg__run_commands() {
    local commands; commands=()
    _describe -t commands 'sg run commands' commands "$@"
}
(( $+functions[_sg__help__scan_commands] )) ||
_sg__help__scan_commands() {
    local commands; commands=()
    _describe -t commands 'sg help scan commands' commands "$@"
}
(( $+functions[_sg__scan_commands] )) ||
_sg__scan_commands() {
    local commands; commands=()
    _describe -t commands 'sg scan commands' commands "$@"
}
(( $+functions[_sg__help__new__test_commands] )) ||
_sg__help__new__test_commands() {
    local commands; commands=()
    _describe -t commands 'sg help new test commands' commands "$@"
}
(( $+functions[_sg__help__test_commands] )) ||
_sg__help__test_commands() {
    local commands; commands=()
    _describe -t commands 'sg help test commands' commands "$@"
}
(( $+functions[_sg__new__help__test_commands] )) ||
_sg__new__help__test_commands() {
    local commands; commands=()
    _describe -t commands 'sg new help test commands' commands "$@"
}
(( $+functions[_sg__new__test_commands] )) ||
_sg__new__test_commands() {
    local commands; commands=()
    _describe -t commands 'sg new test commands' commands "$@"
}
(( $+functions[_sg__test_commands] )) ||
_sg__test_commands() {
    local commands; commands=()
    _describe -t commands 'sg test commands' commands "$@"
}
(( $+functions[_sg__help__new__util_commands] )) ||
_sg__help__new__util_commands() {
    local commands; commands=()
    _describe -t commands 'sg help new util commands' commands "$@"
}
(( $+functions[_sg__new__help__util_commands] )) ||
_sg__new__help__util_commands() {
    local commands; commands=()
    _describe -t commands 'sg new help util commands' commands "$@"
}
(( $+functions[_sg__new__util_commands] )) ||
_sg__new__util_commands() {
    local commands; commands=()
    _describe -t commands 'sg new util commands' commands "$@"
}

if [ "$funcstack[1]" = "_sg" ]; then
    _sg "$@"
else
    compdef _sg sg
fi

export MANPAGER='nvim +Man!'

. "$HOME/.local/bin/env"

export PATH="$PATH:/Users/harrykwakuloba/.modular/bin"