return {
  'mbbill/undotree',
  keys = {
    { '<leader>u', '<cmd>UndotreeToggle<cr>', desc = 'Undotree Toggle' },
  },
  config = function()
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_WindowLayout = 3
    vim.g.undotree_ShortIndicators = 1
    vim.g.undotree_SplitWidth = 30
  end,
}

