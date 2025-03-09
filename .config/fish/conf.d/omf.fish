# Note: using omf solely for NVM
# https://brandonscript.design/making-nvm-work-with-fish-shell-in-2023-f4a7990ac12c
# Is there a better way? probably.

# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
