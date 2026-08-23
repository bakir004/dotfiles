return {
  'nvim-java/nvim-java',
  ft = { 'java' },
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    require('java').setup()
    vim.lsp.enable('jdtls')
  end,
}
