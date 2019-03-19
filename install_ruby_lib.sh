echo "Install Ruby Lib"
gem install rake bundler pry pry-byebug hub colored octokit
echo "Install postgree"
brew install postgresql
brew services start postgresql

echo "Install Redis"
brew install redis
brew services start redis