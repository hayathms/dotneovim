local gps = require("nvim-gps")

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
            { gps.get_location, cond = gps.is_available },
        },
    }
}
