#!/bin/bash
# Do not use, yet

for filename in *.mkv; do
    ffmpeg -i "$filename" -map 0 -c copy -c:a aac -c:v av1 -crf 17 -strict -2 out.mkv
    rm "$filename"
    mv out.mkv "$filename"
done
