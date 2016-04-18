echo "Installing latest ruby..."
rbenv install -l | grep -v - | tail -1
gem install foreman
