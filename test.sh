
docker buildx build --platform linux/amd64 -t wicos/hexo-init:latest .

docker run -itd -p 4000:4000 --name hexo -v ./hexo:/hexo wicos/hexo-init:latest 

