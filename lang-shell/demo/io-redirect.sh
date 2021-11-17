#!/bin/sh

# Shell输入输出重定向

# 重定向列表:
# command>file 将输出重定向到file
# command<file 将输入重定向到file
# command>>file 将输出以追加的方式重定向到file
# n>file  将文件描述符为n的文件重定向到file
# n>>file 将文件描述符为n的文件以追加的方式重定向到file
# n>&m 将输出文件m和n合并
# n<&m 将输入文件m和n合并
# <<tag 将开始标记tag和结束标记tag之间的内容作为输入
#
#注意文件描述符0通常是标准输入(STDIN),1是标准输出(STDOUT),2是标准错误输出(STDERR)

#输出重定向
#重定向一般通过在命令间插入特定的符号来实现。特别的，这些符号的语法如下
# command1 > file1 这个命令将输出的内容存入file1,会覆盖之前内容
# command1 >> file1 新内容添加到文件末尾

who < hello.md
#会打印出hello.md的路径

echo "这是测试输入输出重定向的文件" >>hello.md
# 可以使用cat命令查看终端输出的信息

#输入重定向
# 使用< 或<<
who < hello.md
#例子
#统计hello.md文件的行数,执行下面
wc -l hello.md
#如果不想出现文件名,使用下面命名
wc -l < hello.md


:<<EOF

重定向深入讲解:
  一般而言,每个Linux命令运行的时候都会打开3个文件:
  1.标准输入文件(stdin):文件描述为0,默认从stdin读取数据
  2.标准输出文件(stdout):文件描述为1,默认向stdout输出数据
  3.标准错误文件(stderr):文件描述为2,默认向stderr写入错误信息

  默认情况, command > file 将stdout重定向file, command < file将stdin重定向file
  如果希望stderr重定向到文件,可以:
  command 2> file
  command 2>> file

  合并重定向(输出+错误)
  command > file 2>&1
  command >> file 2>&1

  合并重定向(输入+输出)
  command < file1 >file2
  将stdin重定向到file1,将stdout重定向到file2
EOF


:<<EOF
# Here Document 是一种特殊的重定向
# 用来将输入重定向到一个交互式的Shell脚本或程序中

command << delimiter
  document
delimiter

作用是将两个delimiter之间的内容document作为输入传递给command

#比如:
#cat << EOF
#这里输入内容
#这里输入内容
#这里输入内容
#EOF
上面的命令行,会把内容输出

再比如:
#wc -l << EOF
#这里输入内容
#这里输入内容
#EOF
#上面的命令,会把行数输出

EOF


:<<EOF

如何执行某个命令, 但不希望在屏幕上显示输出结果,那么可以输出重定向到dev/null
command > /dev/null

dev/null 是一个特殊的文件,写入到它的内容会被丢;如果尝试从文件读取内容,那么什么都读取不。
但是dev/null非常有用,将命令输出重定向到它,会起到禁止输出的效果.

如果希望屏蔽到stdout和stderr,可以这样写:
  命令 > /dev/null 2>&1

0 是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）。
这里的 2 和 > 之间不可以有空格，2> 是一体的时候才表示错误输出。
EOF






















