" ==================================================
" Plugins list for vim plug
"
" Files under `plugin` directory will be autoloaded
" as it should part of the runtime path (:h rtp)
" ==================================================

call plug#begin()

" Utilities
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'windwp/nvim-autopairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'godlygeek/tabular'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-scripts/DrawIt'

" Color schemes and appearance
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'SmiteshP/nvim-gps'

" Version control support
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'junegunn/gv.vim'

" Snippets
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" LSP and completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'f3fora/cmp-spell'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'onsails/lspkind-nvim'
Plug 'williamboman/nvim-lsp-installer'
Plug 'ray-x/lsp_signature.nvim'
Plug 'RRethy/vim-illuminate'

" Programming
Plug 'editorconfig/editorconfig-vim'
Plug 'b3nj5m1n/kommentary'
Plug 'simrat39/symbols-outline.nvim'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()


" ==================================================
" Settings
" ==================================================

let mapleader="\<Space>" " Change the leader to be a space vs slash
set scrolloff=3          " Keep 3 lines when scrolling
set cmdheight=2          " Make command line two lines high
set autoindent           " Always set autoindenting on
set visualbell           " Use visual bell instead of beeping
set nobackup             " Do not keep a backup filset noswapfile
set noswapfile           " Do not create a swap file
set hidden               " Enable hiding the buffer without saving
set guicursor=           " Disable cursor styling
set number               " Show line numbers
set relativenumber       " Show the line number relative to current line
set signcolumn=yes       " Draw the sign column
set colorcolumn=80
set nowrap               " Do not wrap long lines
set completeopt=menu,noinsert,noselect
set updatetime=50        " Smaller updatetime for CursorHold & CursorHoldI
set noshowmode           " Hide the default mode text
set shortmess+=c         " Abbreviate messages
set matchpairs+=<:>      " Show matching <> (html mainly) as well
set showmatch            " Show matching braces, somewhat annoying...
set matchtime=3          " Tenths of a second to show the matching paren

" Tab to spaces settings
set tabstop=4            " Number of spaces of tab character
set shiftwidth=4         " Number of spaces to (auto)indent
set expandtab		 " Tab to spaces by default
set softtabstop=4

" Search settings
set hlsearch             " Highlight searches
set incsearch            " Do incremental searching
set ignorecase           " Ignore case when searching
set infercase            " Smarter completions that will be case aware when ignorecase is on
set smartcase            " If contains upper case, make case sensitive search

" No modlines for security
set modelines=0
set nomodeline

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/


" ==================================================
" Key Mappings
" ==================================================

" Maps for jj to act as Esc in insert and command modes
ino jj <esc>
cno jj <c-c>

" One can map ctrl-c to something else if needed
map <c-c> <Nop>
imap <c-c> <Nop>

" Smarter j/k navigation
" Convert the j and k movement commands from strict linewise movements to
" onscreen display line movements via the gj and gk commands. When
" preceded with a count we want to go back to strict linewise movements.
" will automatically save movements larger than 5 lines to the jumplist.
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

" Center next/previous matched string
nnoremap n nzz
nnoremap N Nzz

" <leader>v loads init.vim for edit
map <leader>v :sp ~/.config/nvim/init.vim<CR><C-W>_
" <leader>V Activate changes to init.vim (needs save)
map <silent> <leader>V :source ~/.config/nvim/init.vim<CR>

"
" Window navigation
"

" control + vim direction key to navigate windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

" control + arrow key to navigate windows
noremap <C-Down> <C-W>j
noremap <C-Up> <C-W>k
noremap <C-Left> <C-W>h
noremap <C-Right> <C-W>l

"
" Splits handling
"

" Make these all work in insert mode
imap <C-W> <C-O><C-W>

" - and + to resize horizontal splits
map - <C-W>-
map + <C-W>+

" alt-< or alt-> for vertical splits
map <m-,> <C-W>>
map <m-.> <C-W><

" Deleter buffer, keep the split (switch to prev buf, delete if no prev buf)
nmap <leader>d :b#<bar>bd#<CR>


" Clean all end of line whitespace with <Leader>S
:nnoremap <silent><leader>S :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Highlight yanked region
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END

" Less tab size for several types
augroup two_spaces
    autocmd!
    autocmd FileType css,yaml,scss,js,json,html,toml,lua setlocal shiftwidth=2 tabstop=2 softtabstop=2
augroup END
