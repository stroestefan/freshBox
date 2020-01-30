#!/bin/bash

if [ "$#" == 0 ]; then
  echo "Usage: `basename $0` [entire youtube link]"
  echo "Usage: `basename $0` --playlist [entire youtube playlist link]"
  exit 0
fi

if [ "$1" == "--playlist" ]; then
  python3 /usr/local/bin/youtube-dl -xivo '~/Music/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --audio-format mp3 --audio-quality 3 $2
  exit 0
fi

python3 /usr/local/bin/youtube-dl -xv -o "~/Music/%(title)s.%(ext)s" --audio-format mp3 $1
