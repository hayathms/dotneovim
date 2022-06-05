-- Auto reformat Rust files on save
vim.g.rustfmt_autosave = 1

-- RustFmt uses 100 for line width
vim.api.nvim_command('autocmd bufreadpre *.rs setlocal colorcolumn=100')

-- Enable colorizer plugin
require'colorizer'.setup()
