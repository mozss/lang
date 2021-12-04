#!/bin/sh

# case...esac为多选语句

:<<EOF

  分支用)开始,用";;"表示结束
  case 值 in
  模式1)
      语句1
      ;;
  模式2)
      语句
      ;;
  模式3)
      语句
      ;;
  esac

EOF

#例子
echo "输入1到4之间的数字"
echo "你输入的数字为:"
read aNum
case $aNum in
  1) echo "你选择1"
    ;;
  2) echo "你选择2"
    ;;
  3) echo "你选择3"
    ;;
  4) echo "你选择4"
    ;;
esac


#匹配字符串
site="mozss.com"
case $site in
  "mozss.com") echo "博客地址"
  ;;
  "baidu.com") echo "百度"
  ;;
  "google.com") echo "谷歌"
  ;;
esac


#跳出循环
#break命令, 跳出循环
while :
do
  echo -n "输入1到5的数字"
  read aNumber
  case $aNumber in 1|2|3|4|5) echo "你输入的数字为 $aNumber"
  ;;
  *) echo "你输入的数字不是1-5"
      break
  ;;
  esac
done
# 注意上面的while 与 : 之间有空格


#continue, 跳出当前循环

while :
do
  echo -n "输入1到5的数字"
  read aNumber
  case $aNumber in 1|2|3|4|5) echo "你输入的数字为 $aNumber"
  ;;
  *) echo "你输入的数字不是1-5"
      continue
  ;;
  esac
done































