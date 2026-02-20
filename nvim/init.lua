require("bakeroni")
require("config.lazy")

vim.cmd 'filetype plugin indent on'
vim.cmd 'colorscheme rose-pine'

vim.g.initial_cwd = vim.fn.getcwd()

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd[[ hi Normal guibg=NONE ctermbg=NONE ]]
vim.cmd[[ hi VertSplit guibg=NONE ctermbg=NONE ]]
vim.cmd[[ hi StatusLine guibg=NONE ctermbg=NONE ]]
vim.cmd[[ hi StatusLineNC guibg=NONE ctermbg=NONE ]]
vim.cmd[[ hi SignColumn guibg=NONE ctermbg=NONE ]]
vim.cmd[[ hi NormalNC guibg=NONE ctermbg=NONE ]]

vim.diagnostic.config({
  virtual_text = true,
})

vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = "a"

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

if vim.fn.has('persistent_undo') == 1 then
  local undodir = vim.fn.expand('~/.undodir')
  if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, 'p', 0700)
  end
  vim.o.undodir = undodir .. '//'
  vim.o.undofile = true
end

vim.o.wrap = false
vim.o.clipboard = "unnamedplus"
vim.o.scrolloff = 999

vim.keymap.set("n", "<leader>r", ":source $USERPROFILE/AppData/Local/nvim/init.lua<CR>")
vim.keymap.set("n", "<Tab>", "", {noremap = true, silent = true})



























