# download SolarizedDark theme
tempFile=~/Downloads/solarized_dark.terminal
curl https://raw.githubusercontent.com/tomislav/osx-terminal.app-colors-solarized/master/Solarized%20Dark.terminal -o $tempFile
open $tempFile

echo 'Open preferences (CMD + ,) and update default profile.'

rm -r $tempFile