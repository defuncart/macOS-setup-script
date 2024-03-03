# exit if mysides brew isn't installed
if ! brew cask ls --versions mysides > /dev/null; then
    echo 'Error! mysides brew is not installed! Exiting.'
    exit 0
fi

user_path=/Users/$(whoami)

# set favorites
mysides remove all
mysides add Applications file:////Applications
mysides add Desktop file:///$user_path/Desktop
mysides add Documents file:///$user_path/Documents
mysides add Desktop file:///$user_path/Downloads
mysides add Developer file:///$user_path/Desktop/Developer

# remove tags from sidepanel
# leave only External Disks and CDs as places
# CMD+/ to show status panel
# ALT+CMD+P to show path panel
