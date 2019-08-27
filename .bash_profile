set -o vi # enable vi mode
PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH" # required for pip http://stackoverflow.com/a/21080707

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

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

# because macOS doesn't let us add things to default PATH locations even as root anymore sigh
export PATH="/Users/hliddiard/Documents/PATH:$PATH"

# shortcut for hosts file reload
alias refreshdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hliddiard/google-cloud-sdk/path.bash.inc' ]; then . '/Users/hliddiard/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/hliddiard/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/hliddiard/google-cloud-sdk/completion.bash.inc'; fi
