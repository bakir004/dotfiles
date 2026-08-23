return {
  -- Makes Neovim's built-in `gc` commenting use the correct commentstring
  -- in embedded languages, including JSX/TSX (`{/* ... */}` in tags and
  -- `// ...` in JS code).
  {
    'folke/ts-comments.nvim',
    event = 'VeryLazy',
    opts = {},
    enabled = vim.fn.has('nvim-0.10.0') == 1,
  },
}
