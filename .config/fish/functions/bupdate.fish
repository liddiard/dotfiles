function bupdate --description 'Homebrew update, upgrades, and cleanup'
        brew update
        and brew upgrade -y
        and brew upgrade --cask -y
        and brew cleanup -s
end
