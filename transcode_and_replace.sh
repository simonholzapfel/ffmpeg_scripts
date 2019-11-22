#!/bin/bash

for filename in *.mkv; do
    ffmpeg -i "$filename" -map 0 -c copy -c:v libx265 -crf 18 out.mkv
    rm "$filename"
    mv out.mkv "$filename"
done