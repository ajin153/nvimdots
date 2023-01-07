"""""""""""""""""""""""
""""" lua插件配置 """""
"""""""""""""""""""""""
" ---update: 2022.01.17

" nvim-tree
lua<<EOF
require("nvim-tree").setup({
  view = {
    adaptive_size = true,
  },
  renderer = {
    indent_markers = {
        enable = true
    },
    icons = {
        show = {
            folder_arrow = false
        }
    }
  },
  git = {
    ignore = false
  }
})
EOF

" nvim-treesitter
lua<<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF

" bufferline
lua<<EOF
require('bufferline').setup {
  options = {
    numbers = "ordinal",
    indicator = {
        icon = '▎',
    },
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
  }
}
EOF

" nvim-gps
lua<<EOF
require("nvim-gps").setup()
EOF

" neoscroll
lua<<EOF
require('neoscroll').setup()
EOF

" trouble
lua<<EOF
require('trouble').setup()
EOF

" gitsigns
lua<<EOF
require('gitsigns').setup()
EOF

" lualine
lua<<EOF
require('lualine').setup {
  sections = {
    lualine_c = {
      {
        'filename',
        path = 1
      }
    },
  },
}
EOF

" colorscheme
lua<<EOF
-- require('onenord').setup()
vim.cmd.colorscheme "catppuccin"
-- vim.cmd.colorscheme "everforest"
EOF

" telescope
lua<<EOF
require('telescope').setup {
  extensions = {
    fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = true,  -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                         -- the default case_mode is "smart_case"
    },
    fzf_writer = {
        use_highlighter = true,
    }
  }
}
require('telescope').load_extension('fzf')
EOF

" zen-mode
lua << EOF
  require("zen-mode").setup {}
EOF

" leap
lua << EOF
require('leap').add_default_mappings()
EOF
