return {
    'github/copilot.vim',
    config = function ()
        -- Optional configurations
        -- vim.g.copilot_no_tab_map = true  -- Disables <Tab> for Copilot completion
        -- vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })  -- Remaps accept to <C-J>
    end
}
