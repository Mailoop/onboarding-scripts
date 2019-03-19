sudo rm -rf $HOME/.rbenv /usr/local/rbenv /opt/rbenv /usr/local/opt/rbenv
brew uninstall --force rbenv ruby-build
unset RBENV_ROOT && exec zsh
brew install rbenv ruby-build && exec zsh
rbenv install 2.3.7
rbenv global 2.3.7

ruby -v