function bupdate --description 'Homebrew update, upgrades, and cleanup'
        brew update
        and brew upgrade -y --greedy
        and brew cleanup -s
end
