# exit if dockutil brew isn't installed
if ! brew ls --versions dockutil > /dev/null; then
    echo 'Error! dockutil brew is not installed! Exiting.'
    exit 0
fi

# set dock icons from left to right
dockutil --remove all --no-restart
dockutil --add /Applications/VLC.app --no-restart
dockutil --add /Applications/Google\ Chrome.app --no-restart
dockutil --add /Applications/Visual\ Studio\ Code.app --no-restart
dockutil --add /Applications/Fork.app --no-restart
dockutil --add /Applications/Xcode.app --no-restart
dockutil --add /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app --no-restart
dockutil --add /Applications/Android\ Studio.app --no-restart
dockutil --add /Applications/Android\ File\ Transfer.app --no-restart
dockutil --add /System/Applications/Utilities/Terminal.app --no-restart
dockutil --add /System/Applications/Utilities/Activity\ Monitor.app --no-restart
dockutil --add /System/Applications/System\ Preferences.app --no-restart
dockutil --add '~/Downloads' --view fan --display stack --allhomes

# hide and show instantly
defaults write com.apple.Dock autohide-delay -float 0.0001; killall Dock