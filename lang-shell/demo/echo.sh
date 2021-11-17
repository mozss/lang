#!/bin/sh

# 显示普通字符串 (也可用不是"")
echo "It is a character"
echo It is a character

# 显示转义字符
echo "\"It is a character\" "

# 显示变量
# read命令从标准输入中读取一行,并把输入行的每个字段的值指定给shell变量
# read命令会等待用户输入
read name
echo "$name It is a test"

#显示换行 其中-e是开启换行
echo -e "OK! \n"
echo "It is line break demo"

#不显示换行 其中-e是开启换行,\c不换行
echo -e "OK! \c"
echo "It is not a line break demo"

#显示结果定向至文件, 执行之后, 当前目录, 创建文明
echo "这是一个测试文件,您不必关系!" > mydemo


#原样输出字符串, 不进行转义或取变量(用单引号), 下面输出结果为:$email\"
echo '$email\"'

#显示命令执行
echo `date`