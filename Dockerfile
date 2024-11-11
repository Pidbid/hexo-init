FROM dockette/nodejs:v14
WORKDIR /hexo
ENV PORT=4000
RUN npm config set registry https://registry.npmmirror.com
RUN npm install hexo-cli -g
COPY start.sh /home
RUN hexo init /hexo
CMD ["sh","/home/start.sh"]
