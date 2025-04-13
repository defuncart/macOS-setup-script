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
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.bash_profile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install brews
brew install cask
brew install git
brew install dockutil
brew install rar
brew install ffmpeg
brew install yt-dlp
brew install duti

# applications
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask fork
brew install --cask android-studio
brew install --cask android-file-transfer
brew install --cask vlc
brew install --cask db-browser-for-sqlite
brew install --cask libreoffice

# communications
brew install --cask slack
brew install --cask microsoft-teams
brew install --cask telegram
brew install --cask whatsapp
brew install --cask signal

# dev tools
brew install --cask chromedriver
brew install scrcpy

# cocoapods
brew install cocoapods --build-from-source
brew install swiftformat

# keycastr
brew install --cask keycastr

# setup android
# sh scripts/dev/android.sh

# setup flutter
# sh scripts/dev/flutter.sh

# setup node
sh scripts/dev/nodejs.sh

# system settings
sh scripts/system/system_settings.sh
sh scripts/system/default_apps_file_types.sh
sh scripts/system/dock.sh
sh scripts/system/terminal.sh
