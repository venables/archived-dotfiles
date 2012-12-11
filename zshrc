git config --global core.autocrlf input

# Bundler aliases
alias brake='bundle exec rake'
alias be='bundle exec'

# ls aliases
alias ll='ls -l'
alias la='ls -la'

# Git aliases
alias ga='git add '
alias gap='git add -p'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m '
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git l'
alias gla='git la'
alias gpush='git push'
alias gs='git status'
alias gshow='git show'

# Git helper
g() {
 if [[ $# == '0' ]]; then
   git status
 else
   git "$@"
 fi
}

# Ruby 1.9.3 + Rails improvements
# https://gist.github.com/1688857
export RUBY_GC_MALLOC_LIMIT=60000000
export RUBY_FREE_MIN=200000

# Set the default editor
export BUNDLER_EDITOR=mvim
export EDITOR='mvim -f'

# Load from /usr/local/bin before /usr/bin
export PATH=/usr/local/bin:$PATH

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Android SDK
export PATH=/Android/platform-tools:/Android/tools:$PATH

# For Parallel tests:
export PARALLEL_TEST_PROCESSORS=3

# Colorize the terminal
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
