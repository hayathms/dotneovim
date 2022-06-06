------------------------------------
-- key mapppings
------------------------------------

local map = vim.api.nvim_set_keymap             -- shortcut to the map func
local opts = { noremap = true, silent = true }  -- DRY for map options
local expr = { noremap = true, silent = true, expr = true }  -- Opts and expr

-- map the leader key to space
map('n', '<Space>', '', {})
vim.g.mapleader = ' '                           -- 'vim.g' sets global variables


-- Maps for jj to act as Esc in insert and command modes
map('i', 'jj', '<ESC>', opts)
map('c', 'jj', '<ESC>', opts)

-- Smarter j/k navigation
-- Convert the j and k movement commands from strict linewise movements to
-- onscreen display line movements via the gj and gk commands. When
-- preceded with a count we want to go back to strict linewise movements.
-- will automatically save movements larger than 5 lines to the jumplist.
map('n', 'j', 'v:count ? (v:count > 5 ? "m\'" . v:count : "") . "j" : "gj"', expr)
map('n', 'k', 'v:count ? (v:count > 5 ? "m\'" . v:count : "") . "k" : "gk"', expr)

-- Center next/previous matched string
map('n', 'n', 'nzz', opts)
map('n', 'N', 'Nzz', opts)

-- control + vim direction key to navigate windows
map('n', '<C-J>', '<C-W>j', opts)
map('n', '<C-K>', '<C-W>k', opts)
map('n', '<C-H>', '<C-W>h', opts)
map('n', '<C-L>', '<C-W>l', opts)

-- Make these all work in insert mode
map('i', '<C-W>', '<C-O><C-W>', opts)

-- control + arrow key to resize
map('n', '<C-Down>',  '<C-W>+', opts)
map('n', '<C-Up>',    '<C-W>-', opts)
map('n', '<C-Left>',  '<C-W><', opts)
map('n', '<C-Right>', '<C-W>>', opts)


-- Navigation from terminal
map("t", "<C-h>", "<C-\\><C-N><C-w>h", opts)
map("t", "<C-j>", "<C-\\><C-N><C-w>j", opts)
map("t", "<C-k>", "<C-\\><C-N><C-w>k", opts)
map("t", "<C-l>", "<C-\\><C-N><C-w>l", opts)

-- <leader>V Activate changes to init.lua (needs save)
map('n', '<leader>V', ':source ~/.config/nvim/init.lua<CR>', opts)

-- Clean all end of line whitespace with <Leader>S
map('n', '<leader>S', [[:let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>]], opts)

-- Telescope mapping
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>fw', '<cmd>Telescope grep_string<cr>', opts)
map('n', '<leader>fs', '<cmd>Telescope lsp_document_symbols<cr>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)
map('n', '<leader>fr', '<cmd>Telescope lsp_references<cr>', opts)
map('n', '<leader>fS', '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', opts)

-- nvim tree
map('n', '<leader>tt', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>tf', ':NvimTreeFindFile<CR>', opts)
