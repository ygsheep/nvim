-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",
  transparency = true,
  hl_override = {
    comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  cmp = {
    icons_left = true, -- only for non-atom styles!
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
  },

  telescope = { style = "borderless" }, -- borderless / bordered
  statusline = {
    enabled = false,
  },

  nvdash = {
    load_on_startup = true,
    header = {
      "                            ",
      "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
      "   ▄▀███▄     ▄██ █████▀    ",
      "   ██▄▀███▄   ███           ",
      "   ███  ▀███▄ ███           ",
      "   ███    ▀██ ███           ",
      "   ███      ▀ ███           ",
      "   ▀██ █████▄▀█▀▄██████▄    ",
      "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
      "                            ",
      "     由  NvChad 提供支持   ",
      "                            ",
    },

    buttons = {
      { txt = "  搜索文件", keys = "ff", cmd = "Telescope find_files" },
      { txt = "  最近文件", keys = "fo", cmd = "Telescope oldfiles" },
      { txt = "󰈭  查找词汇", keys = "fw", cmd = "Telescope live_grep" },
      { txt = "󱥚  主题", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
      { txt = "  键盘快捷键", keys = "ch", cmd = "NvCheatsheet" },

      { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },

      {
        txt = function()
          local stats = require("lazy").stats()
          local ms = math.floor(stats.startuptime) .. " ms"
          return "  已加载 " .. stats.loaded .. "/" .. stats.count .. " 个插件，耗时 " .. ms
        end,
        hl = "NvDashFooter",
        no_gap = true,
      },

      { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
    },
  },
}

return M
