"""""""""""""""""""""""
""""""" 基础配置 """"""
"""""""""""""""""""""""
" ---update: 2022.01.22

syntax on               " 启用语法高亮
syntax enable           " 启用语法高亮
filetype on             " 打开文件类型检测
filetype plugin on      " 允许加载文件类型插件
filetype indent on      " 允许为不同类型的文件定义不同的缩进格式
set ttimeoutlen=0       " 关闭延时
set updatetime=300      " 设置刷新交换文件所需的毫秒数为300毫秒
set splitbelow splitright   " 分割窗口时新窗口在当前窗口之下 新窗口在当前窗口之右 (右下)
set conceallevel=0          " 不隐藏当前行任何字符
set autoindent              " 开启新行时复制本行的缩进
set smartindent             " 启用后每一行与前一行有相同的缩进量，通常搭配autoindent一起用
set cindent                 " 针对c/c++的缩进格式进行处理
set cinoptions=g0,:0,N-s,(0 " 搭配cindent使用，设置c/c++的具体缩进方式
set expandtab               " 要将tab转换成空格 (这个设置配合tabstop使用后就只会输入空格了)
set tabstop=4               " 一个tab等于4个空格
set shiftwidth=4            " 设置自动缩进时使用4个空格
" set softtabstop=4         " 如果想要在项目代码中完全规避tab，就不要设置这个值
set smarttab                " 设置这个值可以让vim根据其他地方的缩进空格来决定一个tab是多少个空格
set wrap                    " 启动自动折行
set linebreak               " 根据breakat中定义的字符进行折行
set nolist                  " 隐藏非可见字符
set shortmess=atI            " 省略ins-completion-menu信息
set sidescroll=10           " 水平滚动时的最小列数
set whichwrap+=<,>,h,l      " 通过这个设置，在 VIM 中当光标移到一行最左边的时候，我们继续按左键，光标可以回到上一行的最右边。
set virtualedit=block       " 对于多行删除很有帮助 [https://amikai.github.io/2021/05/23/vim-virtualedit/]
set backspace=2             " 相当于 set backspace=indent,eol,start (允许在自动缩进中、换行符上、插入开始位置上退格)
set hlsearch                " 高亮显示搜索内容
set incsearch               " 输入关键字时高亮显示
set ignorecase              " 搜索时忽略大小写
set smartcase               " 如果搜索的内容有大小写就忽略ignorecase的设置 (那我直接不设置ignorecase效果不一样吗...)
set autoread                " 如果文件在vim外部被修改了而vim中没有修改则自动读取该内容
set autowrite               " 自动保存
set noswapfile              " 不生成.swp文件
set undodir=~/.nvim/undodir " 设置撤销文件的目录
set undofile                " 自动保存撤销文件
set nocompatible            " 为了开启vim本身的强大功能，设置不兼容老vi的格式
set langmenu=zh_CN.UTF-8    " 用于菜单翻译的语言为zh_CN.UTF-8
set helplang=cn             " 设置寻找帮助版本的首选语言为中文
set termencoding=utf-8      " 设置终端使用utf-8编码
set encoding=utf8           " 设置vim内部使用utf-8编码
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030 " 设置打开文件时从左到右尝试文件编码，如果检测到错误就切换下一种
set t_Co=256                " 设置开启256色支持 (vim使用)
set termguicolors           " 设置开启真彩界面 (neovim使用)
set noeb                    " 关闭错误信息响铃
set mouse=a                 " 为所有模式打开鼠标
set hidden                  " 允许隐藏被修改过的buffer (没懂参数效果)
set showcmd                 " 在屏幕最后一行显示(部分的)命令
set ruler                   " 顶部显示行号
set cursorline              " 高亮当前行
set number                  " 显示行号
set laststatus=2            " 设置最后一个窗口始终有状态行
set showtabline=2           " 设置总是显示带有标签页标签的行
set noshowmode              " 关闭在最后一行显示当前模式 (应该是和当前状态栏的功能重合了，有待确认)
set wildmenu                " 打开命令行补全的增强模式
set wildmode=longest:full,full      " 命令行补全采用的方案 (效果如何，有待确认)
set completeopt=menuone,noselect    " 插入模式下的补全，即使只有一个内容也弹出补全信息
match errorMsg /\s\+$/ " 自动检测多余空格(---2022.1.20 这个设置记得在onenord主题加载的luaconfig后面再添加一次，否则onenord主题这个功能不会生效)
set colorcolumn=80 " 设置80个字符提示竖线
" set textwidth=79 " 设置80个字符自动换行
" set fo+=mB " 支持中文换行
" colorscheme onenord            " 设置主题(---2022.1.20, onenord是lua形式的,无法使用colorscheme加载)
set background=dark

highlight CursorWord gui=underline guisp=foreground

let g:python3_host_prog = 'C:\Program Files\Python311\python.exe' 	" 开启python3支持
let g:python_host_prog = 'C:\Python27\python.exe' 	" 开启python2支持
