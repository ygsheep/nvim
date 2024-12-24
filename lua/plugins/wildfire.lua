return {
  "sustech-data/wildfire.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    surrounds = {
      { "(", ")" },
      { "{", "}" },
      { "<", ">" },
      { "[", "]" },
    },
    keymaps = {
      init_selection = "vv",
      node_incremental = "vv",
      node_decremental = "<BS>",
    },
    filetype_exclude = { "qf" }, --keymaps will be unset in excluding filetypes
  },
}
