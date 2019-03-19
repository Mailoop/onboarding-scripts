echo "Delete local install"
sudo rm -rf /usr/bin/ruby
echo "Delete rbenv install" 
sudo rm -rf $HOME/.rbenv /usr/local/rbenv /opt/rbenv /usr/local/opt/rbenv
echo "Delete rbuild install" 
brew uninstall --force rbenv ruby-build
echo "Delete RBENV_VAR" 
unset RBENV_ROOT && exec zsh
echo "Install RBENV" 
brew install rbenv ruby-build && exec zsh
echo "Install ruby 2.3.7" 
rbenv install 2.3.7
echo "Install global 2.3.7" 
rbenv global 2.3.7

ruby -v