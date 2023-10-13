set LD_LIBRARY_PATH /usr/local/lib:/usr/lib
set NPM_PACKAGES "$HOME/.npm-packages"
set PATH $HOME/.local/bin $PATH $NPM_PACKAGES/bin
set SSH_AUTH_SOCK $XDG_RUNTIME_DIR/gcr/ssh

if status is-interactive
    freshfetch

    set EDITOR vim
end

