FROM dockette/nodejs:v14
RUN npm config set registry https://registry.npmmirror.com
RUN npm install hexo-cli -g
WORKDIR /hexo
COPY ./start.sh /home
CMD sh /home/start.sh
