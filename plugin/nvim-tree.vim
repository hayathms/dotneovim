nnoremap <leader>tt <cmd>NvimTreeToggle<cr>
nnoremap <leader>tf <cmd>NvimTreeFindFile<cr>

lua <<EOF
  require'nvim-tree'.setup {
    git = {
      enable = true,
      ignore = true,
      timeout = 500,
    },
  }
EOF
