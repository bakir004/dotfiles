return {
  'milanglacier/minuet-ai.nvim',
  event = 'InsertEnter',
  config = function()
    require('minuet').setup({
      provider = 'openai_compatible',
      request_timeout = 2.5,
      throttle = 1500,
      debounce = 600,

      provider_options = {
        openai_compatible = {
          api_key = function()
            local key_file = vim.fn.expand('~/.config/openrouter/api_key')
            return vim.trim(table.concat(vim.fn.readfile(key_file), '\n'))
          end,
          end_point = 'https://openrouter.ai/api/v1/chat/completions',
          model = 'deepseek/deepseek-v4-flash',
          name = 'Openrouter',

          optional = {
            max_tokens = 128,
            top_p = 0.9,
            provider = {
              sort = 'throughput',
            },
            reasoning = {
              effort = 'none',
            },
          },
        },
      },

      virtualtext = {
        auto_trigger_ft = { '*' },

        keymap = {
          accept = '<Tab>',
          accept_line = '<A-l>',
          next = '<A-]>',
          prev = '<A-[>',
          dismiss = '<A-e>',
        },
      },
    })
  end,
}
