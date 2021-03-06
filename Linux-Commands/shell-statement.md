# Shell Statement

* if 语句，无大括号

  if语句基本语法

  ```bash
  // 基本语法
  if command
  then
  	commands
  fi
  //=================================
  // 含有elif语法
  if command
  then
  	 commands-1
  elif
  	 commands-2
  elif
  	 commands-3
  fi
  //=================================
  // 若date指令运行成功，则输出hello,world
  if date
  then
   	echo "hello,world"
  fi
  ```

  if 语句中的expression需要加中括号

  ```bash
  test [expression]
  // 检测表达式返回true还是false
  
  if [-d file]
  then
   	echo "hello,world"
  fi
  // 若文件是目录则返回true
  //=================================
  if [a -lt b]
  then
   	echo "hello,world"
  fi
  // 若a < b则返回true
  //=================================
  if [str1 == str2]
  then
   	echo "hello,world"
  fi
  // 若 字符串相等 则返回true
  //=================================
  pwd
  if $?
  then
   	echo "hello,world"
  fi
  // 若 上一条指令运行成功 则返回true
  ```

* exit命令

  exit 0 命令成功结束

  exit 1 一般性未知错误

  exit 126 位找到命令

  exit 130 通过ctrl+c中止的命令

  ```bash
  if date
  then
  	echo "hello,world"
  	exit 0
  fi
  ```

* 复合条件测试

  ```bash
  [condition1] && [condition2]
  [condition2] || [condition2]
  
  if [-d $HOME] && [-w $HOME/testing]
  then
  	echo "hello"
  else
  	echo "world"
  fi
  ```

* 高级格式条件

  ```bash
  // 双小括号可以支持数学运算
  ((val++))
  
  if (($val ** 2 > 90))
  then 
  	((val2 = $val * 2))
  fi
  
  // 双中括号可以支持字符串比较的高级特性
  [[$a == j*]]
  
  if [[$USRE == hao*]]
  then
  	echo "hello, $USER"
  else
  	echo "sorry, no user"
  fi
  ```

* for语句

  ```bash
  for var in list
  do
  	commands
  done
  //=================================
  for i in $(ls)
  do
  	echo $i
  done
  //=================================
  for i in $(date)
  do
  	echo $i
  done
  exit 0
  ```

* while until语句

  while 如果条件为真则继续进行，否则跳出循环

  until 如果条件为假则继续进行，否则跳出循环

  ```bash
  while ["$hello" != "$world"]
  do
  	echo "hello,world"
  	read hello
  	read world
  done
  exit 0
  // 从键盘输入的两个单词如果不同则输出
  ```

  ```bash
  until ["$hello" == "$world"]
  do
  	echo "hello,world"
  	read hello
  	read world
  done
  exit 0
  // 从键盘输入的两个单词如果不同则输出
  ```

* case语句

  ```bash
  case str in
    pattern1) commands-1
    ;;
    pattern2) commands-2
    ;;
    *) commands-default
  esac
  
  case "$option" in
    d|D) date
    ;;
    l|L) ls
    ;;
    *) exit 0
    ;;
  esac
  ```

* 数值数据处理

  所有bash变量的值以字符串方式存储

  如果进行算术和逻辑操作必须转换为整数

  shell处理浮点数需要另外添加软件包

* let 语句

  允许进行算数运算

  ```bash
  let c=a+b
  // 会将a与b算数相加
  ```

* expr语句

  ```bash
  expr ARG1 | ARG2
  expr ARG1 < ARG2
  expr 1 + 2 // 1 + 2一定要有空格否则认为是字符串
  expr $a + 1
  ```

* $[]

  将数学运算结果直接赋值给某个变量

  ```bash
  var = $[1 + 5]
  var = $[$a + 2]
  ```

* $(())

  计算表达时候并返回值,和 $[] 不同不可直接赋值

  ```bash
  echo "$((a + b))"
  ```

* 数组处理

  ```bash
  array=(1 2 3 [5]="aaa")
  declare -a array=(1 2 3 [5]="aaa")
  // 定义数组
  
  echo ${a[0]}
  echo ${a[1]}
  echo ${a[2]}
  echo ${a[5]}
  
  echo ${a[*]} // 输出所有元素
  echo ${a[@]} // 输出所有元素
  echo ${#a[@]} // 输出元素个数
  ```

* 函数

  ```bash
  f()
  >{
  > date
  > who
  >}
  // 函数的定义
  
  定义完成之后直接使用,与命令相同
  f
  ```

  