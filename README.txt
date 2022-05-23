1.在~/AppData/Local/nvim/下创建autoload文件夹，用于存放插件

2.将plug.vim放入autoload文件夹(vim-plug是一个插件管理工具)

3.使用PlugInstall命令安装插件
 |- 3.1. 提前搭好梯子和git的代理
  |- git config --global https.proxy http://127.0.0.1:7890
  |- git config --global http.proxy http://127.0.0.1:7890

4.安装consolas NF字体(github上下的，为了满足nvim-tree的图标需求)
  |- my-nerd-fonts-master.zip

5.安装语言依赖(Lua,Python 2,Python 3)
  |- 注意安装目录和环境变量设置
  |- Lua 5.1: LuaForWindows_v5.1.5-52.exe
  |- Python 2.7: python-2.7.16.amd64.msi
  |- Python 3.8: python-3.8.10-amd64.exe

6.安装Chocolatey(Windows下好用的包管理工具)
  |- 用管理员用户开powershell安装以下工具:
    |- fzf: choco install fzf
    |- ripgrep: choco install ripgrep
    |- mingw: choco install mingw
    |- make: choco install make
    |- bat: choco install bat

7.安装ctags(github下载windows编译版)
  |- universal-ctags/ctags-win32: ctags-p5.9.20220522.0-x64.zip

8.安装coq_nvim
  |- 关掉梯子，COQdeps用梯子会出现装不上的情况

9.安装nodejs
  |- Nodejs 16: node-v16.15.0-x64.msi

10.安装lsp(可以考虑用nvim-lsp-installer)
  |- C++: clangd
  |- Python: pyright
  |- Go: gopls
  |- Shell: bashls
  |- Lua: sumneko_lua

