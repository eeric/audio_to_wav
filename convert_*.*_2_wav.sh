#!/bin/bash

folder=$path          #your path

for file in $(find "$folder" -type f -iname "*.m4a") #such as *.flac, etc.
do
    name=$(basename "$file" .m4a) #such as *.flac, etc.
    dir=$(dirname "$file")
    echo ffmpeg -loglevel panic -y -i "$file" "$dir"/"$name".wav
    ffmpeg -loglevel panic -y -i $file $dir/$name.wav
done

# find $folder -name "*.m4a" -exec rm -f {} \;

# https://github.com/a-nagrani/ffmpeg-commands
