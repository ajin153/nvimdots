"""""""""""""""""""""""
"""""" 快捷键配置 """""
"""""""""""""""""""""""
" ---update: 2022.01.17

" <leader> => \

" 加载init.vim快捷键
nnoremap <leader>sv :source $MYVIMRC<CR>

""" 设置剪切复制粘贴
set mouse=a
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>" + p
imap <C-v> <C-r><C-o>+

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <C-f> <cmd>Telescope grep_string<cr>
nnoremap <C-S-f> <cmd>lua require("telescope").extensions.live_grep_raw.live_grep_raw()<cr>

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

" diffview
nnoremap <C-g> :DiffviewOpen<cr>
nnoremap <C-h> :DiffviewClose<cr>

" vista
nnoremap <F2> :Vista!!<CR>

" nvim-tree
nnoremap <C-p> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" accelerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" .h和.cpp切换
nnoremap <C-u> :ClangdSwitchSourceHeader<CR>

" asynctask
noremap <silent><f5> :AsyncTask file-run<cr>
noremap <silent><f9> :AsyncTask file-build<cr>
