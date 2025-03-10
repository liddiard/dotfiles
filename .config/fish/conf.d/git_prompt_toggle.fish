# disable git prompt in org because it takes too long to list when I `cd` into it
function __disable_git_prompt_for_directory --on-variable PWD
    set -l blacklist /Volumes/org
    
    if string match -q "$blacklist*" $PWD
        # Disable git prompt temporarily
        set -g __fish_git_prompt_disabled 1
    else
        # Re-enable git prompt for other directories
        set -e __fish_git_prompt_disabled
    end
end
