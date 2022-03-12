# exit if duti brew isn't installed
if ! brew ls --versions duti > /dev/null; then
    echo 'Error! duti brew is not installed! Exiting.'
    exit 0
fi

# set file defaults for coding
editor_id=$(osascript -e 'id of app "Visual Studio Code"')
duti -s $editor_id .txt all
duti -s $editor_id .md all
duti -s $editor_id .yml all
duti -s $editor_id .yaml all
duti -s $editor_id .dart all
duti -s $editor_id .csharp all
duti -s $editor_id .py all
duti -s $editor_id .sh all

# set file defaults for media
media_id=$(osascript -e 'id of app "VLC"')
duti -s $media_id .mp3 all
duti -s $media_id .wav all
duti -s $media_id .aiff all
duti -s $media_id .mov all
duti -s $media_id .mp4 all
duti -s $media_id .mkv all