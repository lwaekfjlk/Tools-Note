# File_Security

* 文件权限

  每个文件的访问权限分为 所有用户/组用户/其他用户

  权限分为 r读权限 / w写权限 / x执行权限

  ![截屏2020-07-14上午8.22.04](/Users/yuhaofei/Desktop/Linux-Note/ls -l.png)

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

