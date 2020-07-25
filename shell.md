# Shell

* shell

  shell 脚本是从C语言衍生出来，函数功能不常用，较为简单

  shell变量的本质就是允许使用一些读写存储区，提供暂存数据的区域，数据类型也较C比较简单

  Program Control Flow Commands 提供了shell脚本中的命令进行非顺序或者循环执行的功能

* 运行a.sh

  ```bash
  a.sh
  // 无法找到的原因是因为系统会自动在 $PATH 显示的文件夹内对a.sh文件进行寻找，如果a.sh所在的文件不在$PATH对应的路径内则无法正常运行
  
  ./a.sh
  // 给a.sh指定了一个路径进行执行
  ```

* $ 符号

  $a,读取变量的值，即变量的引用

  ${a}_100,将a替换成他的引用输出,否则\$a_100 把a_100作为替换对象

  ${a:-string},如果a存在且不是空值就输出，否则输出string

  ${a:-string},如果a存在且不是空值就输出，否则输出a:string

  ${a:+string},如果a存在且不是空值就输出string，否则输出null

* 单引号使用

  单引号不会替换内部的 $a 引用

  ```bash
  name = 'ji  $a jiangmin'
  ji  $a jiangmin
  ```

* 双引号使用

  如果字符串存在空格，则将整体字符串用双引号引出

  ```bash
  name = "ji  $a jiangmin"
  ji  hahaha jiangmin
  ```

* \* 的使用

  作为元字符代表任何长度的任何字符

* \ 的使用

  ```
  echo \$a
  // 输出的是 $a，因为代表的是转译 
  ```

* PATH路径的添加

  ```bash
PATH = .:$PATH
  ```

* shell变量

  * 环境变量

    标识符系统定义好

    可读写的环境变量：
  
    * PATH(用户检索路径的变量，依据这个变量在其指出的目录下面查找外部命令与曾许)
  
    * HOME(用户根目录的名字)
  
    * PS1(命令行的主shell提示符) 默认为 $
  
  * PS2(命令第二行的二级shell提示符)
  
    * PWD(当前工作目录)
  
  * BASH(bash完整路径)
  
  只读的环境变量：
  
  * \ $0(表示当前程序)
  
  * \$1-\$9(表示命令行参数)
    * \$*(表示命令行所有参数)
    * \$?(表示上次退出程序之后的状态)
  
    ```bash
  /etc/profile
    $HOME/.bash_profile
    $HOME/.bashrc
    $HOME/.bash_login // 不同版本可能缺失
    $HOME/.profile
    // bash 启动时会按照顺序从以上的文件中读取代码，配置环境变量
    ```
  
    ```bash
    echo $PATH
    echo $0
    echo $?
    env  $PATH
    // 均可输出环境变量
    ```
  
    
  
  * 用户定义变量
  
    标识符系统未定义，可自定义，由字母，数字或下划线组成，长度不超过20个
  
    -r 代表只读
    
    -i 代表整型
    
  
  -a 代表数组
  
    -f 代表浮点类型
  
    -x 代表每个子进程访问(类似全局)
  
    ```bash
    declare -r os="Linux"
    typeset -r os="Linux"
    echo $os
    // 定义一个名称为os的变量 r表示只读
    
    os="MacOS"
    // 赋值不能有空格，若有空格则认为是单独的指令
    a=b=20
    // a会被赋值为b=20
    ```
  
  * 全局变量（输出环境变量，所有子进程都能访问的变量）
  
  declare / typeset / export 能够把一个变量的值传递给子进程
  
  ```bash
  declare -x os="Linux"
  typeset -x os="Linux"
  export os
  ```
  
  * 重设变量
  
  将一个变量的值重新设置为NULL
  
  ```bash
  unset os
  ```
  
* 命令替换

  ```bash
  // $(command) 
  echo "today $(date)"
  echo "today $(pwd)"
  // 把命令运行的结果返回
  ```

* 从标准输入设备读入

  ```bash
  read myvar
  read -a name //把词读到name数组中去
  read -p "input:" name //从终端输入name的时候有 input: 的提示符
  // 从键盘读入a变量
  ```

* 给脚本传递参数

  传递的参数保存在环境变量$1-\$9中

  ```bash
  a.sh 1 2 3 4 5
  // 1 2 3 4 5 传递到$1 - $9
  echo $1 $2 $3 
  ```

* set命令

  可以修改$1- \$9的参数

  ```bash
  set aaa bbb
  echo $1 // aaa
  echo $2 // bbb
  ```

* 内置字符串操作

  ```bash
  ${#var} // calculate string length
  ${var:offset:length} // get substring
  ${var#/*/} // match head of string
  ${var/pattern/string} // replace substring according to pattern
  ${var^^} // change to uppercase
  ${var,,} // change to lowcase
  ```

  

