require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- ----- 视觉模式 -----
-- 多行移动
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '>-2<CR>gv=gv")

-- 标签切换
map({ "n", "v" }, "H", function() require("nvchad.tabufline").prev() end, { desc = "切换到上一个标签页" })
map({ "n", "v" }, "L", function() require("nvchad.tabufline").next() end, { desc = "切换到下一个标签页" })

map("n", "dH", "d0")
map("n", "dL", "d$")
-- ----- 正常模式 -----
-- 窗口
map("n", "<leader>sv", "<C-w>v", {desc = "水平新建窗口"}) -- 水平新建窗口
map("n", "<leader>sh", "<C-w>s", {desc = "垂直新建窗口"}) -- 垂直新建窗口


map("n", "<up>", ":res +5<CR>")
map("n", "<down>", ":res -5<CR>")
map("n", "<left>", ":vertical resize-5<CR>")
map("n", "<right>", ":vertical resize+5<CR>")

-- 反复横跳
map({ "n", "v" }, "<leader>i", "<C-i>", {desc = "跳转到下一个位置"})
map({ "n", "v" }, "<leader>o", "<C-o>", {desc = "跳转到上一个位置"})


-- map("n", "S", ":w<CR>")
map("n", ">", ">>")
map("n", "<", "<<")
map("n", "<leader><leader>", "<ESC>/<++><CR>:nohlsearch<CR>c4l")
-- 取消高亮
-- map('n', '<leader>h', ':nohl<CR>')
-- 退出 vim
map('n', '<C-q>', ':qa!<CR>')

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')


map('n', '<A-j>', '"-yy"-P')
map('n', '<A-k>', '"-yy"-p')

map('n', 'tx', ':r !figlet ')
map('n', 'td', ':r !ls | grep . <CR>')

-- copy
map({ 'v', 'n' }, 'y', '"+y')
map({ 'v', 'n' }, 'Y', '"+yy')

map({ 'v', 'n' }, 'p', '"+p')
map({ 'v', 'n' }, 'P', '"+P')
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
