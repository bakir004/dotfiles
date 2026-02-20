return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        local custom_gruvbox = require'lualine.themes.horizon'
        -- Make only the main banner (section c) transparent
        custom_gruvbox.normal.c.bg = 'none'
        custom_gruvbox.insert.c.bg = 'none'
        custom_gruvbox.visual.c.bg = 'none'
        custom_gruvbox.replace.c.bg = 'none'
        custom_gruvbox.command.c.bg = 'none'
        require('lualine').setup {
            options = { 
                theme = custom_gruvbox,
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
            },
        }
    end
}
