#!/bin/bash

for filename in *.mkv; do
    ffmpeg -i "$filename" -map 0 -c copy -c:a aac -c:v libx265 -crf 16 out.mkv
    rm "$filename"
    mv out.mkv "$filename"
done
