nnoremap <leader>tt <cmd>NvimTreeToggle<cr>
nnoremap <leader>tf <cmd>NvimTreeFindFile<cr>

let g:nvim_tree_gitignore = 1

lua <<EOF
    require'nvim-tree'.setup {
        filters = {
            custom = {'.git'},
        }
    }
EOF
