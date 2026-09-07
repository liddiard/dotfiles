function bupdate --description 'Homebrew update, upgrades, and cleanup'
        brew update
        and brew upgrade
        and brew upgrade --cask
        and brew cleanup -s
end
