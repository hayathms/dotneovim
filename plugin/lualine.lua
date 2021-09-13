require('lualine').setup {
    options = {
        section_separators = "",
    },
    sections = {
        lualine_c = {
            {
                'filename',
                path = 1
            },
            require'lsp-status'.status
        },
        lualine_x = {
            {
                'diagnostics',
                sources = {'nvim_lsp'}
            },
            'encoding',
            'fileformat',
            'filetype',
        },
    }
}

local lsp_status = require('lsp-status')

lsp_status.config({
    diagnostics = false
})
lsp_status.register_progress()
