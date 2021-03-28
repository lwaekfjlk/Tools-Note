### Jupyter Lab Config

#### 1. 远程连接设置

* 设置 /.jupyter/jupyter_notebook_config.py内容
  * allow_remote_access = True
  * open_browser = False
  * ConnectionFileMixin.ip = '*'
  * 不需要设置密码，这样就能够直接用token进行登录
* jupyter lab --port=9052 --ip=x.x.x.x 直接运行
* jupyter lab 依赖对应的conda 环境，要在指定的conda环境内启动jupyter lab

### 2. 插件安装

* 为了安装插件，需要用conda 安装 nodejs  和 npm，注意 nodejs 和 npm的版本要求， nodejs > 8，可以安装14.x.x， npm可以安装 6.x.x

  * conda install -c conda-forge nodejs

  * 如果更换了conda源则不须通过conda-forge

    conda install nodejs

* jupyter lab 版本应 > 2.0，3.0 以上有些插件不支持，1.x 会频繁出现 build failed 问题

* 插件可以通过 ExtensionManager 安装，也可以通过 jupyter labextension install xxx 安装

* 安装结束之后需要 进行 jupyter lab build 指令对安装的插件进行重新的编译

* build failed 问题可能在于 conda版本对应的nodejs，npm版本问题，或者jupyter lab本身的版本问题

* 当 pip install xxx 对应 jupter lab 包的时候出现

  ERROR: Cannot uninstall 'terminado'. It is a distutils installed project and thus we cannot accurately determine which files belong to it which would lead to only a partial uninstall.

  使用 pip install tornado --user --ignore-installed来进一步安装

  但仍有可能产生依赖包版本不一致问题

* 插件能从ExtensionManager安装就从其安装，尽量不使用命令行和pip安装

#### 3. VIM shortcut 修改

* 从 ExtensionManager 安装 jupyter-vimrc，不要用命令行安装，会产生问题
* 在 Settings -> Advanced Settings Editor -> vimrc -> User preference -> {"imap": [["jj", "<Esc>"]]}

