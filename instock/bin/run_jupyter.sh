#!/bin/bash

jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token=stock_jupyter --notebook-dir='/data'

echo ------stock_jupyter服务已启动 请不要关闭------
echo 访问地址 : http://localhost:8888/
