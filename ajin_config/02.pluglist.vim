    """""""""""""""""""""""
    """"""" 插件列表 """"""
    """""""""""""""""""""""
    " ---update: 2022.01.19

    call plug#begin('/usr/share/nvim/runtime/autoload/') 			                    " 注意: windows 和 linux 这里请做好区分! (公司内外网都有点区别...)

    Plug 'ryanoasis/vim-devicons'							                        " vim-devicons，留着显示airline的图标
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }         " markdown三件套
    Plug 'preservim/nerdcommenter'							                        " nerdcommenter，注释插件
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}			            " nvim-treesitter，代码语法高亮增强工具
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'skywind3000/gutentags_plus'
    Plug 'fatih/vim-go'								                                " vim-go，go语法补全基础插件
    Plug 'neovim/nvim-lspconfig'							                        " nvim-lspconfig，neovim语言服务器插件
    Plug 'williamboman/nvim-lsp-installer'                                          " nvim-lsp-installer，lsp安装器
    Plug 'Yggdroot/indentLine'							                            " indentLine，缩进线插件
    Plug 'nvim-lua/plenary.nvim'
    Plug 'sindrets/diffview.nvim'							                        " diffview，仿vscode git工具
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'akinsho/bufferline.nvim'							                        " bufferline，lua版的airline，支持关闭图标
    Plug 'itchyny/vim-cursorword'							                        " vim-cursorword，为同一单词提供下划线显示
    " Plug 'simrat39/symbols-outline.nvim'						                    " symbols-outline(---2022.01.20，windows下vista.vim更好用，暂时禁用)
    Plug 'kyazdani42/nvim-tree.lua'							                        " nvim-tree，nerdtree替代品，更好看，更快
    Plug 'liuchengxu/vista.vim' 							                  " 原名：liuchengxu/vista.vim，但是在windows下.vim文件夹无法识别，所以现在是把它下载下来后改成.nvim，同时文件夹名字也改了就能用了(被我用来专为perl服务的tagbar)
    Plug 'nvim-lualine/lualine.nvim'                                                " lualine，airline替代品
    Plug 'rhysd/accelerated-jk'                                                     " accelerated-jk，加速jk上下移动
    Plug 'SmiteshP/nvim-gps'                                                        " nvim-gps，可以标出当前光标所在的变量的层次tag关系
    Plug 'karb94/neoscroll.nvim'                                                    " neoscroll，移动插件
    Plug 'folke/trouble.nvim'                                                       " trouble，标记错误插件
    Plug 'lewis6991/gitsigns.nvim'                                                  " gitsigns，侧边git改动显示插件
    Plug 'shaunsingh/nord.nvim'														" lua版的nord，支持其他元素的显示
    Plug 'ful1e5/onedark.nvim'														" onedark主题
    Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }								" onenord主题
    Plug 'ntpeters/vim-better-whitespace'											" 显示多余空格(---2022.1.20，onenord主题不支持不用插件的方法)
    Plug 'nvim-lua/plenary.nvim'                                                    " telescope前置需要插件
    Plug 'neoclide/coc.nvim', {'branch': 'release'}                                 " coc补全
    Plug 'tpope/vim-fugitive'                                                       " fugitive，git命令工具，Git blame好用
    Plug 'skywind3000/asynctasks.vim'                                               " skywind3000大佬，vim内编译运行插件
    Plug 'skywind3000/asyncrun.vim'                                                 " skywind3000大佬，vim内编译运行插件
    Plug 'nvim-telescope/telescope.nvim'                                            " telescope，支持文件查询，LeaderF文件多了会卡死
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }               " telescope-fzf，支持文件查询，LeaderF文件多了会卡死
    Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }                  " LeaderF，支持模糊查询字段
    Plug 'Vimjas/vim-python-pep8-indent'                                            " vim-python-pep8-indent，python缩进(使用后有类似pycharm的效果，但换行前的'/'要自己加) ---2022.7.13
    Plug 'vim-scripts/BufOnly.vim'                                                  " BufOnly，可以用于关闭除当前页的其他页。---2022.7.16
    Plug 'folke/zen-mode.nvim'                                                      " zen-mode，引入禅模式
    Plug 'michaelb/sniprun', {'do': 'bash install.sh'}                              " sniprun，支持运行片段代码
    Plug 'junegunn/vim-easy-align'                                                  " vim-easy-align，格式化对齐插件
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }                                  " catppuccin, 一种颜色主题
    Plug 'sainnhe/everforest'                                                       " everforest, 一种颜色主题
    Plug 'ggandor/leap.nvim'                                                        " leap，一种高效的跳转工具，支持给搜索字段打标签，根据标签实现跳转
    Plug 'sbdchd/neoformat'                                                         " neoformat，代码格式化插件
    Plug 'kdheepak/lazygit.nvim'                                                    " lazygit，图形化页面操作git

    call plug#end()
