# install latest version of Xcode manually
# open Xcode once to accept license agreements

# change to bash
chsh -s /bin/bash

# create bash_profile
user_path=/Users/$(whoami)
touch ~/.bash_profile
echo "export USER=$user_path" >>~/.bash_profile
echo '# macOS' >>~/.bash_profile
echo 'export BASH_SILENCE_DEPRECATION_WARNING=1' >>~/.bash_profile

# make developer directory
mkdir ~/Desktop/Developer

# install Xcode command line tools
xcode-select --install

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install brews
brew install cask
brew install git
brew install dockutil
brew install ffmpeg
brew install unrar

# cocoapods
sudo gem install cocoapods
pod setup

# applications
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install github
brew cask install fork
brew cask install android-studio
brew cask install android-file-transfer
brew cask install vlc
brew cask install sensiblesidebuttons




# dev tools
sh scripts/dev.sh

brew cask install java
# export JAVA_HOME="/Library/Java/Home"
# sudo ln -nsf $(/usr/libexec/java_home -v 1.8) $JAVA_HOME
brew cask install mysides
brew install duti

# setup android
sh scripts/android.sh

# setup flutter
sh flutter.sh

# install python 3
brew install python




# macOS
sh scripts/system_settings.sh
sh scripts/default_apps_file_types.sh
sh scripts/dock.sh


