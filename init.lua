-- init.lua config

-- 导入按键配置
vim.cmd("source ~/.config/nvim/lua/keybind.vim")
-- nvim设置
vim.cmd("source ~/.config/nvim/lua/config.vim")

require("init-packer")
require("init-config")
require("init-theme")
require("init-coc")
require("init-lsp")
require("init-lspui")

