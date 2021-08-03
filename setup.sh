# install latest version of Xcode manually
# open Xcode once to accept license agreements

# change to bash
chsh -s /bin/bash

# create bash_profile
user_path=/Users/$(whoami)
touch ~/.bash_profile
echo "export USERACC=$user_path" >>~/.bash_profile
echo '# macOS' >>~/.bash_profile
echo 'export BASH_SILENCE_DEPRECATION_WARNING=1' >>~/.bash_profile

# make developer directory
mkdir ~/Desktop/Developer

# install Xcode command line tools
xcode-select --install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install brews
brew install cask
brew install git
brew install dockutil
# brew install unrar # no brew found
brew install ffmpeg
brew install youtube-dl
brew install duti

# applications
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask github
brew install --cask fork
brew install --cask android-studio
brew install --cask android-file-transfer
# brew install --cask virtualbox # fails due to gatekeeper?
brew install --cask vlc
brew install --cask sensiblesidebuttons
brew install --cask db-browser-for-sqlite

# dev tools

# cocoapods
# sudo gem install cocoapods
# pod setup
brew install cocoapods --build-from-source
# brew link --overwrite cocoapods

# brew install --cask java
# export JAVA_HOME="/Library/Java/Home"
# sudo ln -nsf $(/usr/libexec/java_home -v 1.8) $JAVA_HOME
# brew install --cask mysides

# setup android
sh scripts/android.sh

# setup flutter
sh flutter.sh

# install python 3
# brew install python

# macOS
sh scripts/system_settings.sh
sh scripts/default_apps_file_types.sh
sh scripts/dock.sh
