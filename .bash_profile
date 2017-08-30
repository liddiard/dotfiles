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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
