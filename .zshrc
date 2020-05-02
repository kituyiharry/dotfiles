export LANG="en_US.UTF-8"
export TERM=xterm-256color
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/harryk/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
zsh_os_arch(){
  echo -n '\uf300'
  #echo -n '🐦'
}
POWERLEVEL9K_CUSTOM_OS_ARCH="zsh_os_arch"
POWERLEVEL9K_LINUX_ICON='\uE712'
POWERLEVEL9K_VCS_GIT_ICON='\uF406 '
#POWERLEVEL9K_HOME_ICON="\ue61a"
#POWERLEVEL9K_HOME_ICON="\uf300"
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B4'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B6'
POWERLEVEL9K_CONTEXT_TEMPLATE="@%n"
#POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='251'
#POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='003'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='000'
#POWERLEVEL9K_DIR_HOME_BACKGROUND='003'
POWERLEVEL9K_DIR_HOME_BACKGROUND='231'
POWERLEVEL9K_DIR_HOME_FOREGROUND='000'
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='003'
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
#ZSH_THEME="bullet-train"
ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="classyTouch_oh-my-zsh/classyTouch"

#ZSH_THEME="refined"

#TMOUT=125
#TRAPALRM(){
  ## Show time
  #tty-clock -cbB -C3
#}

#:TRAPINT(){
  ## Restore the terminal to normal operation
  #zle reset_prompt
#}

#TRAPQUIT(){
#  zle reset_prompt
#}

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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(git shrink-path)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
#export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#bind -x '"\C-p": vim $(fzf);'

#FZF Completion flags
# Use ~~ as the trigger sequence instead of the default **
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
export FZF_COMPLETION_TRIGGER='~~'

# Options to fzf command
export FZF_COMPLETION_OPTS='+c -x'

# Use ag instead of the default find command for listing path candidates.
# - The first argument to the function is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
# - ag only lists files, so we use with-dir script to augment the output
_fzf_compgen_path() {
  ag -g "" "$1" | with-dir "$1"
}

# Use ag to generate the list for directory completion
_fzf_compgen_dir() {
  ag -g "" "$1" | only-dir "$1"
}
[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"
export KDE_FULL_SESSION='true'


alias suroot='sudo -E -s'
alias vf='vim $(fzf)'
alias gvf='gvim $(fzf)'
alias nvf='nvim $(fzf)'
alias gource_to_mp4='gource -s .06 -1280x720 --auto-skip-seconds .1 --multi-sampling --stop-at-end --key --highlight-users --hide mouse,progress --file-idle-time 0 --max-files 0 --background-colour 000000 --font-size 22 --title "Harry K | Fullstack" --output-ppm-stream - --output-framerate 30 | ffmpeg -y -r 24 -f image2pipe -vcodec ppm -i - -b 65536k gitlog.mp4'
export EDITOR=vim

#~/blurconsole.sh

setopt prompt_subst
export PS1='%n@%m $(shrink_path -f)>'
alias config='/usr/bin/git --git-dir=/home/harryk/.cfg/ --work-tree=/home/harryk'

alias ccproj="mkdir ./{src,test} && touch README.md && touch ./src/BUILD && touch WORKSPACE && echo -e 'load(\"@rules_cc//cc:defs.bzl\", \"cc_binary\")\n\ncc_binary(\n\tname = \"build-all\",\n\tsrcs = glob([\"*.cc\"]),\n\tcopts = [\"-O2\", \"-Wall\"]\n)' > ./src/BUILD && 
	echo -e '#include <bits/stdc++.h>
using namespace std;

int main()
{
	ios::sync_with_stdio(0);
	cin.tie(0);
}
' > ./src/main.cc"
alias ccdeps="mkdir ./{src,test} && touch README.md && touch ./src/BUILD && touch WORKSPACE && touch ./src/mylib.{cc,h} && echo -e 'load(\"@rules_cc//cc:defs.bzl\", \"cc_binary\", \"cc_library\")\n\ncc_library(\n\tname = \"build-deps\",\n\tsrcs = [\"mylib.cc\"]\n\thdrs = [\"mylib.h\"]\n)\n\ncc_binary(\n\tname = \"build-all\",\n\tsrcs = [\"main.cc\"]\n\n\tdeps = [\n\t\t\":build-deps\",\n\t],\n)' > ./src/BUILD && echo -e '#include <bits/stdc++.h>
	int main(int argc, char* argv[])
	{
		std::cout << \"Yo\" <<std::endl;
		return 0;
	}
' > ./src/main.cc"
alias ccgtest="mkdir ./{src,test} && touch README.md && touch ./src/BUILD && touch WORKSPACE &&
	echo -e 'load(\"@rules_cc//cc:defs.bzl\", \"cc_binary\", \"cc_library\", \"cc_test\")
\ncc_library(
	name = \"build-deps\",
	hdrs = [
		\"main.h\"
	],
	visibility = [ \"//test:__pkg__\" ]
)
\ncc_binary(\n\tname = \"build-all\",\n\tsrcs = glob([\"*.cc\"]),\n\tdeps = [\n\t\t\":build-deps\"\n\t],\n\tcopts = [\"-Wall\", \"-Werror\"],\n)' > ./src/BUILD && 
	echo -e '#ifndef MAIN_H
#define MAIN_H

int solve()
{
	return 0;
}

#endif /* ifndef MAIN_H */
' > ./src/main.h &&
	echo -e '#include <bits/stdc++.h>
#include \"main.h\"

int main(int argc, char* argv[])
{
	std::cout << \"Yo\" <<std::endl;
	return 0;
}
' > ./src/main.cc && 
	echo -e 'load(\"@bazel_tools//tools/build_defs/repo:git.bzl\", \"git_repository\")
git_repository(
    name = \"gtest\",
    remote = \"https://github.com/google/googletest\",
    branch = \"v1.10.x\",
)
' > WORKSPACE && 
	echo -e 'cc_test (
    name = \"main-test\",
    srcs = [
        \"main-test.cc\",
    ],
    deps = [
        \"@gtest//:gtest\",
        \"@gtest//:gtest_main\", # Only if hello_test.cc has no main()
        \"//src:build-deps\"
    ],
)' > ./test/BUILD && 
	echo -e '#include \"gtest/gtest.h\"
#include \"src/main.h\"

TEST(JustSolve, solve) {
  EXPECT_EQ(solve(), 0);
}' > ./test/main-test.cc"
#export KIPEPEO_PATH="/home/harryk/Programmes/Kipepeo/"
#alias cmatrix='/usr/local/bin/cmatrix -ab'
#export ANDROID_NDK_HOME=~/Programmes/STUDIOTMP/android-ndk-r17b/
#export ANDROID_NDK_ROOT=~/Programmes/STUDIOTMP/android-ndk-r17b/
#export ANDROID_ARM_ROOT=~/Programmes/STUDIOTMP/android-ndk-r17b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin
#export ANDROID_ARM_ROOT=~/Programmes/STUDIOTMP/toolchain/bin
export ANDROID_HOME=/home/harryk/Android/Sdk
export NDK_HOME=$ANDROID_HOME/ndk-bundle/
#export ANDROID_NDK_HOME=~/Programmes/android-ndk-10b/android-ndk-r10b/
#export ANDROID_NDK_HOME=~/Programmes/android-ndk-r12b/android-ndk-r12b/
#export NDK_TOOLCHAIN=~/Programmes/android-ndk-r12b-linux-x86_64/android-ndk-r12b/toolchains/
#export DEPOT_TOOLS=~/Programmes/V8/depot_tools/
export FLUTTER_PATH=/home/harryk/Programmes/Dart/flutter/flutter/bin
export REBAR_PATH=/home/harryk/.cache/rebar3/bin
export ANDROID_SDK_ROOT="/home/harryk/Android/Sdk"
#export PATH=$ANDROID_SDK_ROOT:$REBAR_PATH:$ANDROID_NDK_HOME:$ANDROID_HOME:$DEPOT_TOOLS:$FLUTTER_PATH:$PATH
export PATH=$ANDROID_SDK_ROOT:$REBAR_PATH:$ANDROID_HOME:$DEPOT_TOOLS:$FLUTTER_PATH:$PATH
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"


export PATH="/home/harryk/.gem/ruby/2.5.0/bin:$HOME/.yarn/bin:$PATH"
export PATH=/home/harryk/.npm-global/bin:$PATH
export PATH=/home/harryk/.local/bin:$PATH
export PATH="/home/harryk/.cargo/bin:$PATH"
export RUST_SRC_PATH="/home/harryk/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"
export CARGO_HOME="$HOME/.cargo"
fpath=($fpath "/home/harryk/.zfunctions")

 #Set Spaceship ZSH as a prompt
#autoload -U promptinit; promptinit
  #SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true
  #SPACESHIP_CHAR_SYMBOL='\uf300  '
  #SPACESHIP_TIME_SHOW=true
  #SPACESHIP_USER_SHOW=always
  #SPACESHIP_GIT_SYMBOL="  "
  #SPACESHIP_EXIT_CODE_SHOW=true
#prompt spaceship

PATH="/home/harryk/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/harryk/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/harryk/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/harryk/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/harryk/perl5"; export PERL_MM_OPT;
export CHROME_BIN="/usr/bin/chromium"
export CHROME_EXECUTABLE="/usr/bin/chromium"
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export _JAVA_OPTIONS="-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Djdk.gtk.version=3 -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
#export JAVA_HOME=/opt/android-studio/jre/
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $HOME/.cargo/env
#source /usr/share/nvm/init-nvm.sh
# export PATH=$PATH:/home/harryk/.cache/.wasm-pack/.wasm-bindgen-cargo-install-0.2.54/bin
#source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source $HOME/.cargo/env

# Wasmer
export WASMER_DIR="/home/harryk/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
