find . -name "*.mp4" -exec sh -c "ffmpeg -v error -i '{}' -map 0:1 -f null - 2>'{}.log'" \;

