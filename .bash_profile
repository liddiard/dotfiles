set -o vi # enable vi mode

# Python's Sphix docs generator didn't like our locale :(
# http://stackoverflow.com/a/10926115/2487925
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# allow blender to be run from command line with `blender`
export PATH="/Applications/Blender/blender.app/Contents/MacOS:$PATH"

# http://stackoverflow.com/questions/34010476/cannot-find-module-npmlog-error-message-when-using-npm-command#comment62534077_35518253
export PATH="$HOME/.npm-packages/bin:$PATH"

# add aws cli to path
# http://docs.aws.amazon.com/cli/latest/userguide/cli-install-macos.html#awscli-install-osx-path
export PATH="~/Library/Python/3.6/bin:$PATH"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# nvm command line
# https://github.com/creationix/nvm#installatio
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="/usr/local/bin:$PATH"

# because macOS doesn't let us add things to default PATH locations even as root anymore sigh
export PATH="/Users/hliddiard/Documents/PATH:$PATH"

# shortcut for hosts file reload
alias refreshdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hliddiard/Documents/PATH/google-cloud-sdk/path.bash.inc' ]; then . '/Users/hliddiard/Documents/PATH/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/hliddiard/Documents/PATH/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/hliddiard/Documents/PATH/google-cloud-sdk/completion.bash.inc'; fi

# Make RabbitMQ available on PATH
export PATH="/usr/local/sbin:$PATH"

# automatically set iTerm tab title to the current directory, explanation in comment below, from https://gist.github.com/phette23/5270658
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi
# Piece-by-Piece Explanation:
# the if condition makes sure we only screw with $PROMPT_COMMAND if we're in an iTerm environment
# iTerm happens to give each session a unique $ITERM_SESSION_ID we can use, $ITERM_PROFILE is an option too
# the $PROMPT_COMMAND environment variable is executed every time a command is run
# see: ss64.com/bash/syntax-prompt.html
# we want to update the iTerm tab title to reflect the current directory (not full path, which is too long)
# echo -ne "\033;foo\007" sets the current tab title to "foo"
# see: stackoverflow.com/questions/8823103/how-does-this-script-for-naming-iterm-tabs-work
# the two flags, -n = no trailing newline & -e = interpret backslashed characters, e.g. \033 is ESC, \007 is BEL
# see: ss64.com/bash/echo.html for echo documentation
# we set the title to ${PWD##*/} which is just the current dir, not full path
# see: stackoverflow.com/questions/1371261/get-current-directory-name-without-full-path-in-bash-script
# then we append the rest of $PROMPT_COMMAND so as not to remove what was already there
# voilà!

# location of the default Nginx configuration file on macOS so I don't have to keep Googling it
export NGINX_CONF=/usr/local/etc/nginx/nginx.conf

# Homebrew on Apple Silicon
export PATH="/opt/homebrew/bin:$PATH"

# https://apple.stackexchange.com/a/371998
export BASH_SILENCE_DEPRECATION_WARNING=1

# make gem installs work (without RVM, on personal laptop)
# https://stackoverflow.com/a/51012973
export GEM_HOME="$HOME/.gem"
export PATH="/Users/liddiard/.gem/bin:$PATH"
