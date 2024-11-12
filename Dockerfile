FROM dockette/nodejs:v16
WORKDIR /hexo
ENV PORT=4000
RUN npm config set registry https://registry.npmmirror.com
RUN npm install hexo-cli -g
COPY start.sh /home
CMD ["sh","/home/start.sh"]
