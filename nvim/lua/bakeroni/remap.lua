vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-f>", "<C-u>zz")

vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- vim.keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>q", "<Cmd>q<CR>")
vim.keymap.set("t", "<C-q>", "<Cmd>q<CR>")

vim.keymap.set("n", "<leader>]", ":TransparentEnable<CR>")

function OpenTerminal()
    vim.cmd(":belowright split")
    vim.cmd(":term")
    vim.cmd(":resize 15")
    vim.cmd("startinsert")
end

vim.keymap.set("n", "<leader>t", [[:lua OpenTerminal()<CR>]])
