return { 'ThePrimeagen/harpoon',
    config = function ()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        local term = require("harpoon.term")

        vim.keymap.set("n", "<leader>a", mark.add_file)
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

        vim.keymap.set("n", "<C-r>", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-y>", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<C-u>", function() ui.nav_file(4) end)

        vim.keymap.set("n", "<C-i>", function() term.gotoTerminal(1) end)
    end
}
