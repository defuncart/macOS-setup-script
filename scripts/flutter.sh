# create a path for library files
libraryPath=~/Desktop/Developer/Libraries
mkdir $libraryPath

# download flutter
tempFile=$libraryPath/flutter_sdk.zip
curl https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.12.13+hotfix.5-stable.zip -o $tempFile
unzip $tempFile -d $libraryPath
rm -r $tempFile

# update bash_profile
echo '# Flutter' >>~/.bash_profile
echo 'export DEV_LIB=$USER/Desktop/Developer/Libraries' >>~/.bash_profile
echo 'export PATH=$PATH:$DEV_LIB/flutter/bin' >>~/.bash_profile
echo '# Dart' >>~/.bash_profile
echo 'export PATH=$PATH:$DEV_LIB/flutter/bin/cache/dart-sdk/bin' >>~/.bash_profile

# print message
echo 'Reload bash_profile using source ~/.bash_profile'