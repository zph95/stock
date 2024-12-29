#!/bin/bash

jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token=stock_juipter --notebook-dir='/data'

echo ------jupiter服务已启动 请不要关闭------
echo 访问地址 : http://localhost:8888/
