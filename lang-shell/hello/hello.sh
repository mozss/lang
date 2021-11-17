#!/bin/bash

echo "hello"

# 单行注释
# 块注释
:<<EOF
  这是使用块注释
EOF



# 两种运行方式
# 第一种:
#     1.将代码，保存为hello.sh
#     2.chmod +x ./hello.sh 赋予执行权限
#     3.使用./hello.sh 执行脚本
# 第二种:
#     作为解释器的参数, /bin/sh hello.sh
