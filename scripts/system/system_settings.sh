# langauge
sudo languagesetup -langspec de
# setup keyboards
# defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add '<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>15000</integer><key>KeyboardLayout Name</key><string>USInternational-PC</string></dict>'

# disable gatekeeper
sudo spctl --master-disable

# date time
defaults write com.apple.menuextra.clock IsAnalog -bool FALSE
# change to 24 hours

# menu bar
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/Volume.menu"
killall SystemUIServer

# screenshots
mkdir ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots/
killall SystemUIServer

# trackpad
# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# accessibility
# reduce transparency
# reduce motion

# password length
sudo pwpolicy -clearaccountpolicies

# use all F1, F2 as standard keys
# defaults write -g com.apple.keyboard.fnState -bool true

# battery percentage
# defaults write com.apple.menuextra.battery ShowPercent YES
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist BatteryShowPercentage -bool true
killall SystemUIServer