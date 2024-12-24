return {
  "folke/todo-comments.nvim",
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>]t",
      function()
        require("todo-comments").jump_next()
      end,
      desc = "Next todo comment",
    },
    {
      "<leader>[t",
      function()
        require("todo-comments").jump_prev()
      end,
      desc = "Previous todo comment",
    },
    -- TODO: do something
    -- FIX: this should be fixed
    -- HACK: weird code warning
  },
}
