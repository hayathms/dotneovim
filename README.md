My Neovim setup
===============

My Neovim IDE setup.

![NeoVIM screenshot](https://i.imgur.com/Hjthsde.png)


Note: For the old COC related setup, please checkout the `with-coc` tag.

Features
---------

* `init.vim` handling
* Incremental and smart case search.
* Trailing whitespace highlighting and cleaning shortcut
* Logical and Visual layout (for Right-To-Left languages) editing
* Tabs expand to 4 spaces by default, 2 spaces for specific file types
* Remap `<Leader>` to `<SPACE>` and `jj` to `<ESC>`
* Highlight current row and color column 80
* Syntax checking and completion via language servers
* Quotes, parens etc pair, surround
* ASCII drawing
* Various fuzzy finders with Telescope
* Git plugins (Fugitive, gitsigns)
* Completion and snippets via LSP
* Commenting

Shortcuts and re-Mappings
----------------------------

| Key                    | Command                                                           |
| ---------------------- | ----------------------------------------------------------------- |
| ``jj``                 | ``<Esc>`` in insert and command modes                             |
| ``<SPACE>``            | ``<Leader>``                                                      |
| ``<Leader>v``          | Load `.vimrc`                                                     |
| ``<Leader>V``          | Activate changes to `.vimrc` (Make sure to save it before)        |
| ``<Leader>tt``         | Toggle tree                                                       |
| ``<Leader>tf``         | Find current file in the tree                                     |
| ``<Leader>ts``         | Toggle symbols side bar                                           |
| ``<Leader>S``          | Remove trailing whitespace                                        |
| ``<CTRL>hjkl``         | Window movement commands                                          |
| ``<CTRL>arrow``        | Window movement commands                                          |
| ``<Leader>d``          | Delete buffer, keep the split                                     |
| ``-``, ``+``           | Resize horizontal splits                                          |
| ``<ALT><`` ``<ALT>>``  | Resize vertical splits                                            |
| ``<TAB>``              | trigger completion, completion confirm, snippet expand and jump   |
| ``<Leader>ff``         | Find files with Telescope                                         |
| ``<Leader>fg``         | Live Grep with Telescope                                          |
| ``<Leader>fw``         | Grep current word with Telescope                                  |
| ``<Leader>fs``         | Search in current document LSP symbols with Telescope             |
| ``<Leader>fb``         | Search in current buffers with Telescope                          |
| ``<Leader>fh``         | Search in VIM help tags with Telescope                            |
| ``<Leader>fr``         | Find references (LSP) for symbols under cursor                    |
| ``<Leader>fS``         | Search in workspace LSP symbols with Telescope                    |
| ``<Leader>tr``         | Toggle logical (RTL, e.g: Hebrew) editing                         |
| ``<Leader>ti``         | Toggle visual (RTL, e.g: Hebrew) editing (insert chars backward   |
| ``gd``                 | Goto definition (LSP)                                             |
| ``gr``                 | Symbol references in quickfix (LSP)                               |
| ``K``                  | Show documentation/signature hover (LSP)                          |
| ``<Leader>ca``         | Code actions (LSP)                                                |
| ``<Leader>rn``         | Rename symbol (LSP)                                               |
| ``<Leader>f``          | Format buffer (LSP)                                               |

For more LSP related mappings, see [lsp.lua](plugin/lsp.lua).


Plugins
------------

### Color schemes & Appearance

* [Gruvbox](https://github.com/morhetz/gruvbox)
* [lualine](https://github.com/nvim-lualine/lualine.nvim) - Fast status line
* [nvim-web-devicon](https://github.com/kyazdani42/nvim-web-devicons) - Icons
  for plugins
* [lspkind-nvim](https://github.com/onsails/lspkind-nvim) - This tiny plugin
  adds vscode-like pictograms to neovim built-in lsp:

### Utilities

* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - highly
  extendable fuzzy finder
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) -
  provide a simple and easy way to use the interface for tree-sitter in Neovim
  and to provide some basic functionality such as highlighting
* [vim-surround](https://github.com/tpope/vim-surround) - quoting &
  parenthesizing made simple
* [vim-repeat](https://github.com/tpope/vim-repeat) - enable repeating
  supported plugin maps with "."
* [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) - A File
  Explorer For Neovim Written In Lua
* [auto-pairs](https://github.com/jiangmiao/auto-pairs) - Insert or delete
  brackets, parens, quotes in pair
* [tabular](https://github.com/godlygeek/tabular) - text filtering and
  alignment
* [vim-unimpaired](https://github.com/tpope/vim-unimpaired) - pairs of handy
  bracket mappings
* [splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim) - A Vim plugin
  that simplifies the transition between multiline and single-line code
* [DrawIt](https://github.com/vim-scripts/DrawIt) - ASCII drawing plugin:
  lines, ellipses, arrows, fills, and more!
* [indentLine](https://github.com/Yggdroot/indentLine) - A vim plugin to
  display the indention levels with thin vertical lines

### Version Control

* [Fugitive](https://github.com/tpope/vim-fugitive) - a Git wrapper so awesome,
  it should be illegal
* [gv.vim](https://github.com/junegunn/gv.vim) - A git commit browser in Vim
* [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Super fast git
  decorations implemented purely in lua/teal.

### Programming support

* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - A collection of
  common configurations for Neovim's built-in language server client.
* [nvim-lspinstall](https://github.com/kabouzeid/nvim-lspinstall) - Adds the
  missing `:LspInstall` <language> command to conveniently install language
  servers
* [lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim) - Show
  function signature when you type
* [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp/) - A completion
  engine plugin for neovim written in Lua, including various sources for
  completion (LSP, UltiSnips, path, emoji, buffer).
* [kommentary](https://github.com/b3nj5m1n/kommentary) - Neovim plugin to
  comment text in and out, written in lua
* [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim) -
  A tree like view for symbols in Neovim using the LSP
* [editorconfig-vim](https://github.com/editorconfig/editorconfig-vim) -
  [EditorConfig](https://editorconfig.org/) plugin for Vim
* [UltiSnips](https://github.com/sirver/ultisnips) - The ultimate snippet
  solution for Vim.
* [vim-snippets](https://github.com/honza/vim-snippets) - Snippets collection

### Additional Programming Languages and Markups

* [vim-go](https://github.com/fatih/vim-go) - Go development plugin for Vim
* [rust.vim](https://github.com/rust-lang/rust.vim) - provides Rust file
  detection, syntax highlighting, formatting, Syntastic integration, and more.


Prerequisites
-------------

- Neovim and Neovim Python client.
- For faster search, [ripgrep](https://github.com/BurntSushi/ripgrep)
- NodeJS (for some language servers)


Usage
------------

The following commands will clone the repo, and install `vim-plug` plugin
manager:

    mkdir -p ~/.config/nvim
    git clone https://github.com/MeirKriheli/dotneovim.git ~/.config/nvim
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


Install plugins from the command line:

    nvim +PlugUpdate +qa


After that start Neovim and install the desired language servers, e.g:

    :LspInstall python
    :LspInstall Rust


For more info see [nvim-lspinstall bundled installers](https://github.com/kabouzeid/nvim-lspinstall#bundled-installers)

Overrides
----------------

Create the directory* `~/.config/nvim/after`, placing there additional
configurations.
