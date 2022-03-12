# create a path for library files
libraryPath=~/Desktop/Developer/Libraries
mkdir $libraryPath

# download flutter
cd $libraryPath
git clone https://github.com/flutter/flutter.git -b stable

# update bash_profile
echo '# Flutter' >>~/.bash_profile
echo 'export DEV_LIB=$USERACC/Desktop/Developer/Libraries' >>~/.bash_profile
echo 'export PATH=$PATH:$DEV_LIB/flutter/bin' >>~/.bash_profile
echo '# Dart' >>~/.bash_profile
echo 'export PATH=$PATH:$DEV_LIB/flutter/bin/cache/dart-sdk/bin' >>~/.bash_profile

# print message
echo 'Reload bash_profile using source ~/.bash_profile'