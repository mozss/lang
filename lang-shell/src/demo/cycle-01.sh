#!/bin/sh

#for循环
#例子1
for loop in 1 2 3 4 5
do
  echo "The value is: $loop"
done
#例子2
for str in Thin ia a String
do
  echo $str
done



#while循环
#例子1
intVar=1
while(( $intVar<=5 ))
do
  echo $intVar
  let "intVar++"
done
#这里使用了bash let命令,用于执行一个或多个表达式,
#变量计算中不需要$来表示变量

#读取键盘的输入

echo "按下<CTRL-D>退出"
echo -n "输出你的博客地址:"
while read Blog
do
  echo "好的! $Blog是你的博客"
done

#无限循环
:<<EOF
while:
do
  语句
done


while true
do
  语句
done

for(( ; ; ))

EOF

#until循环

#例子:输出0-9的数字
a=0
until [ ! $a -lt 10 ]
do
  echo $a
  a=`expr $a + 1`
done




















