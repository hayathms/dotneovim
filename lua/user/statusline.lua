local gps = require("nvim-gps")

require('lualine').setup {
    options = {
        theme = 'nord',
        section_separators = '',
        component_separators = ''
    },
    sections = {
        lualine_c = {
            {
                'filename',
                path = 1
            },
            {
                gps.get_location,
                cond = gps.is_available,
            },
        },
        lualine_x = {
            {
                'encoding',
                padding = 0,
            },
            'fileformat',
            {
                'filetype',
                icon_only = true,
                padding = {left = 0, right = 1},
            }
        },
    }
}
