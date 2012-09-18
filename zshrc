git config --global core.autocrlf input

# Add aliases
alias brake='bundle exec rake'
alias be='bundle exec'

# Set the default editor
export BUNDLER_EDITOR=mvim

# Load from /usr/local/bin before /usr/bin
export PATH=/usr/local/bin:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Node.js includes
#export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

# Android SDK
export PATH=$PATH:/work/katama/android-sdk-macosx/platform-tools:/work/katama/android-sdk-macosx/tools
#export ANDROID_HOME=/Users/mattvenables/Library/android/android-sdk-mac

# For Parallel tests:
export PARALLEL_TEST_PROCESSORS=3

# Some colors:
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export GREP_OPTIONS='--color=auto'

# Initialize colors.
autoload -U colors
colors

# Allow for functions in the prompt.
setopt PROMPT_SUBST

parse_git_branch() {
  branch="$(git symbolic-ref HEAD 2>/dev/null)" || return
  echo "@${branch#refs/heads/}"
}

# Set the prompt.
PROMPT=$'%{${fg[cyan]}%}%B%~%b%{${fg[yellow]}%}$(parse_git_branch)%{${fg[default]}%} '

autoload -U compinit
compinit

ulimit -n 10000

# Set Apple Terminal.app resume directory
if [[ $TERM_PROGRAM == "Apple_Terminal" ]] && [[ -z "$INSIDE_EMACS" ]] {
  function chpwd {
    local SEARCH=' '
    local REPLACE='%20'
    local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
    printf '\e]7;%s\a' $PWD_URL
  }

  chpwd
}
