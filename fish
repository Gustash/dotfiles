set LD_LIBRARY_PATH /usr/local/lib:/usr/lib
set NPM_PACKAGES "$HOME/.npm-packages"
set SSH_AUTH_SOCK $XDG_RUNTIME_DIR/gcr/ssh
set PATH $HOME/development/flutter/bin $HOME/.local/bin $HOME/.cargo/bin $PATH $NPM_PACKAGES/bin
set EDITOR nvim

direnv hook fish | source
