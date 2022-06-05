local map = vim.api.nvim_set_keymap

require'nvim-tree'.setup {
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
}

map('n', '<leader>tt', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
map('n', '<leader>tf', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})
