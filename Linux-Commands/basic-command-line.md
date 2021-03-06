# Basic_Command_Line

* shell通配符

  * [abc]匹配a,b,c中的一个字符

  * {a,b,c}匹配a与b与c

  * a*匹配以a开头的字符，\*可以表示多个
  * ?.txt匹配txt后缀的文件,?为位置字符，只能表示一个

* shell提示符

  ```shell
  echo $PS1
  PS1="$" 
  //修改提示符
  ```

* 改变用户身份

  ```shell
  su root // 切换为root用户
  ```

* 显示当前路径

  ```shell
  pwd
  ```

* 显示信息

  ```bash
  whoami //显示用户名
  uname  //显示操作系统信息
  hostname //显示登陆在主机上的名字
  id	   //显示用户id与组用户
  ```

* 创建和删除目录

  ```bash
  mkdir // 创建
  rmdir // 删除
  ```

* 添加PATH

  ```bash
  PATH = ~/bin : $PATH : . // 添加 ~/bin 与 当前目录
  ```

* cat命令

  ```bash
  cat a b //同时显示一个或者多个文件的内容
  ```

* clear命令

  ```bash
  clear //清除屏幕
  ```

* alias命令

  ```bash
  alias [name[=string]] // 给name建立string别名
  unalias //删除别名
  ```

* Ctrl+X命令

  ```bash
  zsh
  zsh
  zsh // 进入三层嵌套的shell
  Ctrl+D // 退出一层shell
  Ctrl+C // 退出当前命令程序
  Ctrl+Z // 暂停当前命令执行
  ```

* 查看当前shell

  ```bash
  echo $SHELL
  ```
