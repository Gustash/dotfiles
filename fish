set LD_LIBRARY_PATH /usr/local/lib:/usr/lib
set NPM_PACKAGES "$HOME/.npm-packages"
set PATH $HOME/development/flutter/bin $HOME/.local/bin $HOME/.cargo/bin $PATH $NPM_PACKAGES/bin
set EDITOR nvim

alias docker podman
alias swagger-codegen "java -jar $HOME/.local/bin/swagger-codegen-cli.jar"

direnv hook fish | source
