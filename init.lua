-- init.lua config

-- 导入按键配置
vim.cmd("source ~/.config/nvim/lua/keybind.vim")
-- nvim设置
vim.cmd("source ~/.config/nvim/lua/config.vim")

require("init-packer")
require("init-config")
require("init-keybind")
require("init-theme")
require("which")
-- LSP config
require("lsp.setup")
require("lsp.config")
require("lsp.ui")
require("lsp.theme")
require("lsp.cmp")


