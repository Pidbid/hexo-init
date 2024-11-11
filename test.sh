
docker buildx build --platform linux/arm64 -t wicos/hexo-init:latest . 
docker buildx build --platform linux/arm64 -t wicos/hexo-init:latest . --push

docker run -itd -p 4000:4000 --name hexo -v ./hexo:/hexo wicos/hexo-init:latest

