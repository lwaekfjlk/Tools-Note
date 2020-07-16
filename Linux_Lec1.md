# Linux_Lec1

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

* vi / vim

  vim为vi的增强版，为GNU软件

* 文件

  Linux文件为字节序列，所有东西(磁盘，目录，打印机)均作为文件处理

  扩展名对Linux来说没有意义

* 文件类型

  * 普通文件
  * 目录文件
  * 设备文件(设备IO作为对文件的读取)
  * 链接文件
  * 管道文件[FIFO] (在进程间传递数据 )
  * Socket套接字文件 (网络通信)

* 文件系统

  一个文件系统为一个分区

  磁盘进入系统后挂载在某个目录下

* 标准目录和文件

  * /dev 设备文件
  * /etc 配置问价
  * /boot 系统启动使用
  * /bin linux命令的可执行文件
  * /home 主目录 /home/yuhaofei $HOME可查看
  * /tmp 程序执行时的临时文件
  * /usr 可以在不同主机间共享的只读数据
  * /sbin 系统管理工具与应用软件

* mac/win文件系统

  * NTFS：win文件系统 (C:/ D:/)
  * HFS+/APFS：mac文件系统

* 文件系统挂载

  ```bash
  sudo mount -t 文件系统类型 设备文件路径(/dev/...)  挂载目录
  ```

* 查看文件系统占用空间

  ```bash
  df
  ```

* more/less指令

  与cat类型，但支持翻页

  ```bash
  cd /Desktop/ | more
  cd /Desktop/ | less // 可使用vi的命令
  ```

* ls参数

  ```bash
  ls -a // 显示含隐藏文件的所有文件
  ls -l // 将文件所有信息都打印出
  ```

* touch指令

  ```bash
  touch a.c //新建文件，若已经存在则修改文件时间戳
  ```

* file指令

  ```bash
  file * //查看当前目录下所有文件的具体格式解析
  ```

* 查看文本文件内容

  ```bash
  cat a //正序
  tac a //倒序
  ```

* 创建文件

  ```bash
  cat >a.sh
  a
  b
  c
  // 创建键盘输入内容的a.sh 问价
  ```

* 文件复制

  ```bash
  cp file1 file2 // file1 复制到 file2
  ```

* 文件转移

  ```bash
  mv a.txt file2 // a.txt 转移到 file2内部
  ```

* 文件删除

  ```
  rm a
  -r //递归删除
  -f //强制删除
  -i //删除前提示
  ```

* 文件大小

  ```bash
  wc -l a.txt//行数
  wc -c a.txt//字符数
  wc -w a.txt//单词数
  ls -l | wc -l //统计当前目录下有几行
  ```

  