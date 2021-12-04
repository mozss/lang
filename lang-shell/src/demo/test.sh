#!/bin/sh

#test命令用于检查某个条件是否成立,它可以进行数值,字符和文件三方面的测试

#数值测试
# -eq 等于
# -ne 不等于
# -gt 大于
# -ge 大于等于
# -lt 小于
# -le 小于等于
# 这里的l和g应该是< 和 > 的箭头所指的方向

num1=100
num2=200
if test $[num1] -eq $[num2]
then
    echo "相等"
else
    echo "不相等"
fi

# 上面代码中的[] 执行基本的算术运算,比如
a=5
b=6
result=$[a+b]
echo "a+b的值为"$result


#字符串测试
# = 等于
# != 不等于
# -z 字符串长度为0, 返回true
# -n 字符串长度不为0, 返回true
# 上面的参数,拼接的时候,注意有空格

num1="mozss"
num2="mozss1024"
if test $num1 = $num2
then
  echo "相等"
else
  echo "不相等"
fi

#文件测试
# -e 文件存在,为true
# -r 文件存在而且可读,为true
# -w 文件存在而且可写,为true
# -x 文件存在而且可执行,为true
# -s 文件存在而且至少有一个字符,为true
# -d 文件存在而且为目录,为true
# -f 文件存在而且为普通文件,为true
# -c 文件存在而且为字符型特殊文件,为true
# -b 文件存在而且为特殊文件,为true

cd /bin
if test -e ./bash
then
  echo "文件存在"
else
  echo "文件不存在"
fi

# 另外,Shell还提供了与(-a),或(-o),非(!)用于测试条件连接
#优先级: 非>与>或

cd /bin
if test -e ./notFile -o -e ./bash
then
  echo "至少有一个文件存在"
else
  echo "两个文件都存在"
fi





































