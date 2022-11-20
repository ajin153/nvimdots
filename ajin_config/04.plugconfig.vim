"""""""""""""""""""""""
""""" vim插件配置 """""
"""""""""""""""""""""""
" ---update: 2022.01.22

" indentLine
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

" ctags
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']   	" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_ctags_tagfile = '.tags'  					" 指定生成的tag文件的名称
let g:gutentags_modules = []							" 开启ctags支持
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
let g:gutentags_cache_dir = expand('~/.cache/tags')				" 将自动生成的 ctags文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let g:gutentags_ctags_extra_args = ['--fields=+niazS','--extra=+q']		" 配置 ctags 的参数，老的 Exuberant-ctags 不能有 --extra=+q，注意
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_ctags_extra_args += ['--perl-kinds=+dMh']
let g:gutentags_ctags_extra_args += ['--python-kinds=+zl']
let g:gutentags_ctags_extra_args += ['--go-kinds=+R']
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" nvim-tree
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 1 "0 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 0,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set renderer.indent_markers.enable (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': "",
    \ 'symlink': "",
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

" vista
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_sidebar_width = 40
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "",
\  }

" nerdcommenter
let g:NERDSpaceDelims=1     " 注释后面自动加空格

" vim-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" vim-better-whitespace
let g:better_whitespace_guicolor='#b988b0'
let g:better_whitespace_enabled=1

" vim-markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0 " 关闭code-block自动折叠
let g:vim_markdown_folding_disabled = 1 " 关闭markdown自动折叠

" asynctasks、asyncrun
let g:asyncrun_open = 15
let g:asynctasks_term_pos = 'bottom'

" Leaderf
let g:Lf_fuzzyEngine_C=1
let g:Lf_WindowHeight=0.25
let g:Lf_WildIgnore = {
        \ 'dir': ['.svn','.git','.hg'],
        \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
    \}

let g:gutentags_define_advanced_commands = 1

" vim-easy-align
" 配置一些自定义符号
let g:easy_align_delimiters = {
\ '>': { 'pattern': '>>\|=>\|>'  },
\ '/': {
\     'pattern':         '//\+\|/\*\|\*/',
\     'delimiter_align': 'l',
\     'ignore_groups':   ['!Comment'] },
\ ']': {
\     'pattern':       '[[\]]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ ')': {
\     'pattern':       '[()]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ 'd': {
\     'pattern':      ' \(\S\+\s*[;=]\)\@=',
\     'left_margin':  0,
\     'right_margin': 0
\   },
\ '\': {
\     'pattern': '\\$',
\   }
\ }
