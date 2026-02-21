return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter', -- Ensure treesitter is available
    },
    opts = {
      defaults = {
        preview = {
          treesitter = false, -- Disable treesitter highlighting in preview to avoid ft_to_lang error
        },
        file_previewer = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
        file_ignore_patterns = { "node_modules", "dist", "build", "%.git/" },
      },
    },
  },
}

