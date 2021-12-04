#!/bin/sh

# sh/bash中如果控制为空,就不要写else

:<<EOF if控制

  if 条件
  then
      语句1
      语句2
      语句3
  fi

可以写成一行,需要使用分号
  if[];then 语句;fi
EOF

:<<EOF if else控制
  if 条件
  then
      语句1
  else
      语句2
  fi
EOF

:<<EOF if else-if else 注意,其中的else-if使用(elif)
  if 条件1
  then
      语句
  elif 条件2
  then
      语句
  else
      语句
  fi
EOF

