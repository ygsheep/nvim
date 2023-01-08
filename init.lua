-- init.lua config

-- 导入按键配置
vim.cmd("source ~/.config/nvim/lua/keybind.vim")
-- nvim设置
vim.cmd("source ~/.config/nvim/lua/config.vim")

require("init-packer")

-- tree configuration
require("packer-config")
require("coc")
require("lsp")
-- 不可见字符的显示，这里只把空格显示为一个点
-- vim.o.list = true
-- vim.o.listchars = "space:·"
-- 补全增强
vim.o.wildmenu = true
-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 右侧参考线，超过表示代码太长了，考虑换行
--vim.wo.colorcolumn = "80"

