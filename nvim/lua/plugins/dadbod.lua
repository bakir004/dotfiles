return {
  {
    "tpope/vim-dadbod",
    cmd = { "DB", "DBUIToggle", "DBUI", "DBUIAddConnection", "DBUIFindBuffer" },
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = { "tpope/vim-dadbod" },
    cmd = { "DBUIToggle", "DBUI", "DBUIAddConnection", "DBUIFindBuffer" },
    keys = {
      { "<leader>db", "<cmd>DBUIToggle<cr>", desc = "Toggle Dadbod UI" },
      { "<leader>df", "<cmd>DBUIFindBuffer<cr>", desc = "Find DB buffer" },
      { "<leader>da", "<cmd>DBUIAddConnection<cr>", desc = "Add DB connection" },
    },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_save_location = vim.fn.stdpath("data") .. "/dadbod-ui"
    end,
  },
  {
    "kristijanhusak/vim-dadbod-completion",
    ft = { "sql", "mysql", "plsql" },
  },
}
