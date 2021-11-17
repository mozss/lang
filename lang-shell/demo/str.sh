#!/bin/sh

# 字符串可以是""或''
str1="I am Hungry"
str2='I am hungry'

echo $str1
echo $str2

# 关于单引号:
#   1.引号内任何字符原样输出
#   2.成对出现,不能单独出现一个,(包括单独的转义)

# 双引号的例子:
#   1.里面可以有变量
#   2.可以有转义字符
myname="mozss"
sayhello="hell, you are\"$myname\"! "
echo -e $sayhello

# 字符串的拼接
#   1.使用单引号
#   2.使用双引号

myEmail="mozss1024@gmail.com"
#单引号
aboutEmail_1='your email,'$myEmail''
echo $aboutEmail_1
#双引号
aboutEmail_2="your email,"${myEmail}""
echo $aboutEmail_2


#获取字符串长度
email="mozss1024@gmail.com"
echo ${#email}
#提取子字符串,第一个开始,截取5个
echo ${email:0:5}
#查找字符串,查找出现o的位置
echo `expr index "$email" o` #输出2