# firstly open android studio and install sdk + command line tools
# restart computer

# update bash_profile
echo '# Android' >>~/.bash_profile
echo 'export ANDROID_SDK_ROOT=$USERACC/Library/Android/sdk' >>~/.bash_profile
echo 'export ANDROID_HOME=$ANDROID_SDK_ROOT' >>~/.bash_profile
echo 'export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' >>~/.bash_profile

# print message
echo 'Reload bash_profile using source ~/.bash_profile'
