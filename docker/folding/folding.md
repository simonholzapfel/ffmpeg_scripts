docker run \
  --name folding-at-home \
  -p 7396:7396 \
  -p 36330:36330 \
  -e USER=Anonymous \
  -e TEAM=0 \
  -e ENABLE_GPU=false \
  -e ENABLE_SMP=true \
  --restart unless-stopped \
  yurinnick/folding-at-home



docker run --rm -it -p7396:7396 johnktims/folding-at-home:latest \
    --user=John_Tims --team=11675 --power=full
