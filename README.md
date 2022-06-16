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
| ``<CTRL>arrow``        | Resize splits
| ``<Leader>d``          | Delete buffer, keep the split                                     |
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

For more LSP related mappings, see [lsp.lua](lua/user/lsp.lua).


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


After that start Neovim and install the desired language servers, e.g:

    :LspInstallInfo
