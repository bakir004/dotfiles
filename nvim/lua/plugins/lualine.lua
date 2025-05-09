return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        local custom_gruvbox = require'lualine.themes.horizon'
        require('lualine').setup {
            options = { theme  = custom_gruvbox },
        }
    end
}
