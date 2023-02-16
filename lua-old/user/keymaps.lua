
vim.g.mapleader = ' '

local keymap = vim.keymap

-- ===== 插入模式 ===== 
keymap.set("i","jk","<ESC>")

-- ----- 视觉模式 -----
-- 多行移动
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '>-2<CR>gv=gv")

-- ----- 正常模式 -----
-- 窗口
keymap.set("n","<leader>sv","<C-w>v") -- 水平新建窗口
keymap.set("n","<leader>sh","<C-w>s") -- 垂直新建窗口

keymap.set("n",";",":")
keymap.set("n","S",":w<CR>")
keymap.set("n","<leader><leader>s",":e ~/.config/nvim/init.lua<CR>")

-- 取消高亮
keymap.set('n','<leader>nh',':nohl<CR>')





