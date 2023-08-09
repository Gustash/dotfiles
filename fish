set LD_LIBRARY_PATH /usr/local/lib:/usr/lib
set NPM_PACKAGES "$HOME/.npm-packages"
set PATH $HOME/.local/bin $PATH $NPM_PACKAGES/bin

if status is-interactive
    freshfetch
    keychain --eval --quiet --quick --noask --timeout 60 | source

    set EDITOR vim
end

