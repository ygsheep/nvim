
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


keymap.set("n","<up>",":res +5<CR>")
keymap.set("n","<down>",":res -5<CR>")
keymap.set("n","<left>",":vertical resize-5<CR>")
keymap.set("n","<right>",":vertical resize+5<CR>")


keymap.set("n",";",":")
keymap.set("n","S",":w<CR>")
keymap.set("n","<leader><leader>s",":e ~/.config/nvim/<CR>")

-- 取消高亮
keymap.set('n','<leader>nh',':nohl<CR>')

keymap.set('n','<C-h>','<C-w>h')
keymap.set('n','<C-j>','<C-w>j')
keymap.set('n','<C-k>','<C-w>k')
keymap.set('n','<C-l>','<C-w>l')
