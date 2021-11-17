#!/bin/sh

# 用于检测unix文件的各种属性
# -b file 是否块设备文件
# -c file 是否字符设备文件
# -d file 是否目录
# -f file 是否普通文件(既不是目录,也不是设备文件)
# -g file 是否设置了SGID位
# -k file 是否设置了粘着位(Sticky Bit)
# -p file 是否有名管道
# -u file 是否设置了SUID
# -r file 是否可读
# -w file 是否可写
# -x file 是否可执行
# -s file 是否为空(文件大小是否大于0)
# -e file 是否存在(包括目录)

#其他
#   -S: 判断文件是否socket
#   -L: 检测文件是否存在并且是一个符号链接