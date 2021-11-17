#!/bin/sh

#只支持一维数组, 使用空格分隔, 而不是","

mybook=(book1 book2 book3)
mybook[3]=book4

yourbook=(
book-a
book-b
book-c
)
yourbook[3]=book-d

#读取单个
echo ${mybook[3]}
echo ${yourbook[3]}

#读取所有: 使用@或*
#可能是插件的bug,下方语句没有语法错误
echo ${mybook[@]}
echo ${yourbook[@]}

#读取长度:或读取字符串的长度一样
echo ${#mybook[*]}
echo ${#mybook[@]}