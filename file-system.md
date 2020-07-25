# File_System

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

* 文件压缩

  | 压缩     | 解压        | 扩展名 |
  | -------- | ----------- | ------ |
  | compress | uncompress  | .Z     |
  | tar+gzip | gzip        | .tgz   |
  | gzip     | gunzip/gzip | .gz    |
  | zip      | unzip       | .zip   |
  | bzip2    | bzip2 -d    | .bz2   |

  zcat,zmore查看bash中压缩的文本文件

  tar 将多个文件打包，封装的集成工具

  ```bash
  tar -tzvf a b // gzip压缩
  tar -xzvf a   // gzip解压
  tar -cjvf a b // bz2压缩
  tar -xjvf a   // bz2解压
  ```

  7z a create.zip ./* 压缩文件夹所有内容到create.zip

  7z d wantounzip.zip ./ 解压文件夹所有内容到目标目录

  

* 安装包工具

  Debian/Ubuntu		sudo apt install/remove

  CentOS/RedHat/Fedora	sudo yum install/remove

​		apt 是Debian系列的dpkg工具的核心，dpkg中其他工具还有apt-get/apt-cache/aptitude

* 文件排序

  ```shell
  ls -l | sort -k 9 // 按照文件的第九列信息开始排列
  ```

* 查找命令与文件名字

  ```shell
  find . -name "*.c"  // 查找
  find . -name "*.c" -rm {} // 删除文件
  where pip // 在PATH变量制定的路径中，查找系统命令的位置
  ```

* 添加环境变量

  ```shell
  PATH = (want to add path):$PATH
  PATH = .:$PATH // 添加当前路径
  ```

* 查看日历

  ```shell
  cal // 显示当前月份
  cal 2020 // 显示当前年份
  ```

* 搜索文件内容

  ```shell
  grep/fgrep/egrep "正则表达式" 文件名
  ```

* 查看历史文件

  ~/.bash_history 查看历史命令

  ```shell
  history // 查看历史命令
  ```

* Sed 流编辑器

  命令行直接实现文本替换

  ```shell
  sed 's/Unix/Linux' Linux.txt //将文件中的一个Unix替换成linux
  sed 's/Unix/Linux/g' Linux.txt //将文件中的全部Unix替换成linux
  ```

* Linux 与 Window 的文件转换

  使用dos2unix / unix2dos

  ```shell
  dos2unix a.txt
  ```

  
