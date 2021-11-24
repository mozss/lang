#!/bin/sh

# 规则:
#   1. "="与变量名之间,没有空格
#   2. 字母+数字+下划线, 数字不开头

# 使用: $+变量名
# 建议: 加{}使用
your_name="mozss"
echo $your_name
echo ${your_name}

# 设置变量只读: readonly + 变量名
myblog="mozss.com"
readonly myblog
# myblog="www.mozss.com" 写入这句, 会提示myblog是只读变量,不能修改


# 删除变量: unset
# 使用readonly之后, 再使用unset也会报错,提示变量readonly
mygithub="githu.com/mozss"
unset mygithub
#echo $mygithub 写入这句, 不会输出任何内容


# 将/etc目录下文件名循环输出
# for file in $(ls /etc)
# 或 for file in `ls /etc`

