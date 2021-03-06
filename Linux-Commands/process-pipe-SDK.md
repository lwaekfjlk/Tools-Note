# Process & Pipe & SDK

### Process

* 进程

  * 内部命令：本身是shell进程的一部分 [alias echo]
  * 外部命令：命令代码以文件形式出现 [mkdir grep]

  执行外部命令，Linux创建一个进程

  命令执行完毕系统撤销

  ```bash
  ps // 查看进程
  ps a // 查看所有进程
  ps -a // 查看同一终端下的所有程序
  ps -A // 查看所有进程
  ps -ef // 查看所有进程信息，连同命令行
  ps -au // 查看详细进程
  ps -aux // 查看所有包含其他使用者的进程
  ```

* 前台与后台

  ```bash
  gedit a   // 在前台运行，shell不能执行命令
  
  gedit a & // 在后台运行，shell可以继续执行命令
  // 后台运行返回进程号与作业号PID
  ```

* 前后台转换

  ```bash
  fg %1 //将后台1号作业号进程转到前台
  
  Ctrl+Z // 现将进程暂停
  bg %1 //将前台1号作业号进程转到后台
  
  jobs // 显示所有挂起和后台进程的作业号
  ```

* 守护进程

  运行于后台的系统进程，向用户提供各种服务和执行系统管理任务

* 命令顺序与并发

  ```bash
  pwd;ls;cd ..; //顺序执行
  pwd & ls & cd ..& //并发执行,创建不同的进程
  ```

* 终止进程

  前台进程终止

  ```
  Ctrl+C // 终止前台进程
  ```

  后台进程终止

  ```bash
  kill -9 6710 // kill -9强制终止 进程号
  pkill bash // 根据进程名称终止
  
  // 挂载到前台后终止
  fg %6710
  Ctrl+C
  ```

* 进程睡眠

  ```bash
  sleep 3 // 睡眠3s
  ```

* 命令有条件执行

  ```bash
  data || pwd
  data && pwd
  ```

* 进程层次关系

  ```bash
  pstree -a | more // 查看树状结构
  ```

* 重定向

  Linux在命令执行时自动打开 标准输入、标准输出、标准错误输出文件
  接受 键盘输入、命令行输出、命令行错误输出

  通过文件重定向可以将 标准文件定向到其他地方，实现从不同文件输入输出，将错误输出到指定文件

  * 输入重定向

  ```bash
  cat <tempfile // 将tempfile作为cat命令的标准输入文件
  cat // 未重定向
  
  rsh server sort < datafile // 在服务器上运行sort命令，输入重定向为本地客户端的文件
  ```

  * 输出重定向

  ```bash
  cat >outfile // 将内容输出到outfile，输入默认为键盘
  ```

  * 错误输出重定向

  ```bash
  cat 1>outfile 2>errfile // 将错误输出重定向到errifle,标准输出重定向到outfile
  cat 2>~/dev/null // 将错误输出重定向到空设备
  ```

  * 错误输出和标准输出合并

  ```bash
  cat 1>outfile 2>&1 // 错误输出重定向到标准输出的文件内
  cat 2>&1 1>outfile // 重定向从左往右执行，错误
  ```

* exec指令

  ```bash
  exec date // 替代shell进程，不创建新的进程来执行指令
  exec < a.sh // 将exec的输入重定向
  exec > b.sh // 将exec的输出重定向
  exec </dev/tty // 将exec输入恢复为标注输入
  exec </dev/tty // 将exec输出恢复为标准输出
  ```



### Pipe

* 管道

  进程通信机制

  管道连接的命令成为“过滤器”

  ```bash
  ls -l /dev/* | grep "d" | wc -l
  ```

* tee命令

  ```bash
  ls -l /dev/* | grep "d" | tee tmp.txt | wc -l
  ```

  在管道运输过程中实现输出的暂时保存

* xargs 将参数列表分为小块分段传

  ```bash
  find . -name * | xargs cat | wc -l // 找到所有文件内容并统计行数
  ```



### SDK

* indent 命令

  ```bash
  indent test.c // 自动将C代码转换成GNU风格
  ```

* gcc参数

  ```bash
  gcc -c a.c // 只编译不链接
  gcc a.c -o file // 指定输入文件名称
  gcc -S a.c// 只编译不汇编
  gcc -E a.c// 只进行预编译
  gcc -I /lib a.c //指定链接文件
  gcc -g a.c// 编译过程中包含调试信息供gdb调试
  gcc -fPIC a.c // 生成使用相对地址的位置无关的目标代码
  gcc -static a.c // 将fPIC目标文件生成动态链接库文件
  
  gcc -fPIC -shared a.c -o test.so// 将文件编译为动态链接库
  ```

* make命令

  ```bash
  make //直接根据makefile内容编译
  ```

  根据当前目录下的 [Makefile] 文件内容进行编译

* cmake工具

  辅助make使用

  ```bash
  // 一般流程
  mkdir build
  cd ..
  cmake .. // 找到Cmakefiles.txt
  make     // build内生成makefiles.txt并执行make指令
  ```

* time 命令

  ```bash
  time ls
  // 显示总时间，用户时间，系统时间
  ```

  