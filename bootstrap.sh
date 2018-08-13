# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Oh-My-Zsh
brew install zsh zsh-completions
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "alias brb='pmset displaysleepnow'" >> ~/.zshrc
echo "ZSH_THEME='philips'" >> ~/.zshrc
echo "export EDITOR=nano" >> ~/.zshrc

# git up
sudo gem install git-up

# add ssh key to keychain
ssh-add -K ~/.ssh/id_rsa

# download youtube videos
brew install youtube-dl

# java
brew tap caskroom/versions
brew cask install java8
brew cask install java
brew install jenv
echo "$(jenv init -)" >> ~/.zshrc
jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home
jenv add /Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home

# scala
brew install sbt
brew install scala

# maven
brew install maven

# golang
brew install go

# nodejs
brew install npm
brew install yarn

# travis CLI
brew install travis

# utils
brew install jq
brew install graphviz
brew install gettext
echo 'export PATH="/usr/local/opt/gettext/bin:$PATH"' >> ~/.zshrc
brew install tree
brew install wget
