vim.g.mapleader = ' '

local keymap = vim.keymap

-- ===== 插入模式 =====
keymap.set("i", "jk", "<ESC>")

-- ----- 视觉模式 -----
-- 多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- 首尾移动
keymap.set({ "n", "v" }, "H", "0")
keymap.set({ "n", "v" }, "L", "$")

keymap.set("n", "dH", "d0")
keymap.set("n", "dL", "d$")
-- ----- 正常模式 -----
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新建窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新建窗口


keymap.set("n", "<up>", ":res +5<CR>")
keymap.set("n", "<down>", ":res -5<CR>")
keymap.set("n", "<left>", ":vertical resize-5<CR>")
keymap.set("n", "<right>", ":vertical resize+5<CR>")

-- 反复横跳
keymap.set({ "n", "v" }, "<leader>i", "<C-i>")
keymap.set({ "n", "v" }, "<leader>o", "<C-o>")


keymap.set("n", "S", ":w<CR>")
keymap.set("n", ">", ">>")
keymap.set("n", "<", "<<")
keymap.set("n", "<leader><leader>", "<ESC>/<++><CR>:nohlsearch<CR>c4l")
-- 取消高亮
keymap.set('n', '<leader>nh', ':nohl<CR>')

keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-l>', '<C-w>l')


keymap.set('n', '<A-j>', '"-yy"-P')
keymap.set('n', '<A-k>', '"-yy"-p')

keymap.set('n', 'tx', ':r !figlet ')
keymap.set('n', 'td', ':r !ls | grep . <CR>')

-- copy
keymap.set({ 'v', 'n' }, 'y', '"+y')
keymap.set({ 'v', 'n' }, 'Y', '"+yy')

keymap.set({ 'v', 'n' }, 'p', '"+p')
keymap.set({ 'v', 'n' }, 'P', '"+P')



-- other
vim.cmd [[
	
]]
