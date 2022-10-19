"""""""""""""""""""""""
"""""" 快捷键配置 """""
"""""""""""""""""""""""
" ---update: 2022.01.17

" <leader> => \

" 加载init.vim快捷键
let $MYVIMRC = '/usr/share/nvim/sysinit.vim'
nnoremap <leader>sv :source $MYVIMRC<CR>

""" 设置剪切复制粘贴
set mouse=a
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>" + p
imap <C-v> <C-r><C-o>+

" 设置全选<C-a>
nmap <C-a> ggVG

" bufferline
nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
nmap <leader>q :bp<cr>:bd #<cr>

" BufOnly
nmap <leader>qa :BufOnly<cr>

" diffview
nnoremap <C-g> :DiffviewOpen<cr>
nnoremap <C-h> :DiffviewClose<cr>

" vista
nnoremap <F7> :Vista!!<CR>

" nvim-tree
nnoremap <C-p> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFileToggle<CR>

" accelerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" coc
nnoremap <C-u> :CocCommand clangd.switchSourceHeader<CR>
nnoremap gd :call CocActionAsync('jumpDefinition')<CR>

" asynctask
noremap <silent><F1> :AsyncTask file-build<cr>
noremap <silent><F2> :AsyncTask file-run<cr>

" Leaderf，telescope
" 查找文件: \f
nnoremap <leader>f <cmd>Telescope find_files<cr>
" 查看缓存文件: \b
nnoremap <leader>b <cmd>Telescope buffers<cr>
" Leaderf内部下<C-j>,上<C-k>
" 别删下面这条的空格，它是我的键位映射
noremap <C-f> :Leaderf rg --match-path 

" 根据ctags结果补全：默认是插入模式下的<C-x><C-]>，修改成<C-Space>(需解决微软拼音快捷键冲突问题)
imap <C-Space> <C-x><C-]>

" 映射普通模式下使用':'直接进入命令行模式
nnoremap ; :
xnoremap ; :

" 在命令行粘贴的快捷键
cnoremap <C-V> <C-R>+

" zen-mode
nnoremap <leader>z :ZenMode<cr>

" coc.nvim
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" sniprun
vmap <F3> :'<,'>SnipRun <cr>
nmap <F4> :SnipClose <cr>

" vim-easy-align
xmap ga <Plug>(EasyAlign)
