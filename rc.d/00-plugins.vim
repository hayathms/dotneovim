" ==================================================
" vim-plug  setup
" ==================================================
"
call plug#begin()

" Color schemes and appearance

Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'chriskempson/base16-vim'
Plug 'tomasr/molokai'
Plug 'mhartington/oceanic-next'
Plug 'arcticicestudio/nord-vim'

" Appearance
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'


" General utilities

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-unimpaired'
Plug 'terryma/vim-multiple-cursors'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-scripts/DrawIt'
Plug 'machakann/vim-highlightedyank'


" Version control support
"
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ludovicchabant/vim-lawrencium'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'


" Programming support

Plug 'sheerun/vim-polyglot' " Over 70 language packs
Plug 'tomtom/tcomment_vim'
Plug 'majutsushi/tagbar'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-scripts/Shebang'
Plug 'w0rp/ale'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/MatchTagAlways'


" Completion

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'sebastianmarkow/deoplete-rust'


" Programming languages

Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'Quramy/tsuquyomi'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'groenewege/vim-less'
Plug 'ap/vim-css-color'
Plug 'vim-scripts/po.vim--Jelenak'
Plug 'pangloss/vim-javascript'


call plug#end()
