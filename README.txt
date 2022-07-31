默认配置位置(ajin_config/ 和 sysinit.vim)：/usr/share/nvim

插件存放位置(plug.vim 和 其他插件): ~/.local/share/nvim/site/autoload

1.在~/.local/share/nvim/下创建/site/autoload文件夹，用于存放插件

2.将plug.vim放入autoload文件夹(vim-plug是一个插件管理工具)

3.使用PlugInstall命令安装插件
 |- 3.1. 提前搭好梯子和git的代理
  |- git config --global https.proxy http://wsl的ip:7890
  |- git config --global http.proxy http://wsl的ip:7890

4.安装consolas NF字体(github上下的，为了满足nvim-tree的图标需求)
  |- my-nerd-fonts-master.zip

5.安装语言依赖(Lua,Python 2,Python 3)
  |- apt-get python2 python3 lua5.4

6.安装插件依赖的工具
  |- fzf: apt-get install fzf
  |- ripgrep: apt-get install ripgrep
  |- ctags: apt-get install universal-ctags
  |- nodejs: 不能用默认的，ubuntu-22.04默认的nodejs版本比较旧

7.安装lsp
  |- C and C++: clangd
  |- Python: pyright
  |- Shell: bashls
