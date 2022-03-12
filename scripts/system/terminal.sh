# add colors to terminal
echo -e '\n# Add colors to Terminal\nexport CLICOLOR=1\nexport LSCOLORS=ExFxBxDxCxegedabagacad' >> ~/.bashrc

tempFile=~/Downloads/OneDark.terminal
curl https://raw.githubusercontent.com/nathanbuchar/atom-one-dark-terminal/master/scheme/terminal/One%20Dark.terminal -o $tempFile
open $tempFile

echo 'Open preferences (CMD + ,) and update default profile.'

rm -r $tempFile