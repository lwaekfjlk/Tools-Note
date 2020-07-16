# Linux_Lec2

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

* 文件权限

  每个文件的访问权限分为 所有用户/组用户/其他用户

  权限分为 r读权限 / w写权限 / x执行权限

  ![截屏2020-07-14上午8.22.04](./ls -l.png)

* 改变用户权限

  字符模式

  ```bash
  chmod u+x a.sh // 给用户添加x(执行)的权限
  chmod g+x a.sh // 给组用户添加x(执行)的权限
  chmod u=rmx a.sh // 给用户添加read/write/execute 权限
  ```

  八进制模式

  user/group/other (八进制表示三个bit的权限，三个bit分别表示rwx)

  ```shell
  chomd 704 a.sh // 用户权限111，group权限000，other用户权限100
  ```

* umask

  显示当前设置的掩码，即默认user/group/other不能有的权限

  ```bash
  umask  //查看掩码
  ```

* passwd

  ```
  passwd //修改用户密码
  ```

* 特殊访问位

  除r/w/x以外还有s权限，让当前用户拥有文件所有者的权限

  八进制 axxx a位为特殊访问位 

  ```bash
  chmod u+s filename
  ```

* chattr命令

  ```bash
  chattr +i file.txt // 给文件增加不可删除的权限 [linux专有]
  ```

* lsattr命令

  ```bash
  lsattr -a file.txt // 查看文件的chattr命令
  ```

* 符号链接

  可跨越文件系统

  ```bash
  ln -s a a.sf // 给a文件创建软链接
  readlink a.sf // 查看该软链接指向的文件
  ```

* wget

  ```bash
  wget https://...
  ```

  * 从网络下载开源软件源码

  * 解压
  * make命令构建二进制文件 [可能通过shell脚本执行]
  * make install 安装对应目录