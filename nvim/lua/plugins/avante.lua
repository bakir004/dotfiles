return {
  'yetone/avante.nvim',
  build = vim.fn.has('win32') ~= 0
      and 'powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false'
      or 'make',
  event = 'VeryLazy',
  version = false,
  dependencies = {
    'hrsh7th/nvim-cmp',
    'nvim-tree/nvim-web-devicons',
    'HakonHarnes/img-clip.nvim',
    'zbirenbaum/copilot.lua',
    'stevearc/dressing.nvim',
    'folke/snacks.nvim',
  },
  opts = {
    provider = 'copilot', -- Options: 'copilot', 'openai', 'anthropic', etc.
    providers = {
      copilot = {
        suggestion_provider = 'copilot.lua',
      },
      -- To use other providers, uncomment and configure:
      -- openai = {
      --   api_key = os.getenv('OPENAI_API_KEY'),
      --   model = 'gpt-4', -- or 'gpt-3.5-turbo', etc.
      -- },
      -- anthropic = {
      --   api_key = os.getenv('ANTHROPIC_API_KEY'),
      --   model = 'claude-3-opus', -- or 'claude-3-sonnet', etc.
      -- },
    },
    behaviour = {
      auto_suggestions = false,
      auto_set_highlight_group = true,
      auto_set_keymaps = false,
      auto_apply_diff_after_generation = false,
      support_paste_from_clipboard = false,
      enable_fastapply = false, -- Disable automatic application of changes
    },
    edit = {
      auto_apply = false, -- Prevent automatic application of edits
      diff_preview = true, -- Show diff preview before applying changes
    },
    mappings = {
      ask = '<leader>aa', -- Ask Avante
      edit = '<leader>ae', -- Edit with Avante
      refresh = '<leader>ar', -- Refresh Avante
      suggestion = {
        accept = '<C-l>',
        next = '<C-n>',
        prev = '<C-p>',
        dismiss = '<C-]>',
      },
      sidebar = {
        switch_windows = '<Tab>',
        reverse_switch_windows = '<S-Tab>',
      },
    },
  },
  keys = function(_, keys)
    local opts = require('lazy.core.plugin').values(require('lazy.core.config').spec.plugins['avante.nvim'], 'opts', false)
    
    local mappings = {
      {
        opts.mappings.ask,
        function() require('avante.api').ask() end,
        desc = 'avante: ask',
        mode = { 'n', 'v' },
      },
      {
        opts.mappings.edit,
        function() require('avante.api').edit() end,
        desc = 'avante: edit',
        mode = { 'n', 'v' },
      },
      {
        opts.mappings.refresh,
        function() require('avante.api').refresh() end,
        desc = 'avante: refresh',
        mode = 'v',
      },
    }
    mappings = vim.tbl_filter(function(m) return m[1] and #m[1] > 0 end, mappings)
    return vim.list_extend(mappings, keys)
  end,
}

