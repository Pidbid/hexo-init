
#!/bin/bash

if [ -z "$(ls -A /hexo)" ]; then
    echo "start init a new hexo"
    hexo init /hexo
fi
hexo generate
hexo server -p $PORT