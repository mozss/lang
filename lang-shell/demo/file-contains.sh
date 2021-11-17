#!/bin/sh

#和其他语言一样,Shell也可用包含外部脚本,这样可以很方便的封装一些公用的代码作为一个独立的文件

:<<EOF
  . filename # 注意.和filename之间有空格
  或
  source filename
EOF

#例子: 创建两个shell脚本
:<<EOF

test1.sh
#!/bin/sh
url="www.mozss.com"

test2.sh
#!/bin/sh
#使用.来引用test1.sh文件
. ./test1.sh
#或使用
# source ./test1.sh

之后,我们为test2.sh添加可执行权限并执行
chmod +x test2.sh
./test2.sh
EOF