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
map({ "n", "v" }, "H", function()
  require("nvchad.tabufline").prev()
end, { desc = "切换到上一个标签页" })
map({ "n", "v" }, "L", function()
  require("nvchad.tabufline").next()
end, { desc = "切换到下一个标签页" })

map("n", "dH", "d0")
map("n", "dL", "d$")
-- ----- 正常模式 -----
-- 窗口
map("n", "<leader>sv", "<C-w>v", { desc = "水平新建窗口" }) -- 水平新建窗口
map("n", "<leader>sh", "<C-w>s", { desc = "垂直新建窗口" }) -- 垂直新建窗口

map("n", "<up>", ":res +5<CR>")
map("n", "<down>", ":res -5<CR>")
map("n", "<left>", ":vertical resize-5<CR>")
map("n", "<right>", ":vertical resize+5<CR>")

-- 反复横跳
map({ "n", "v" }, "<leader>i", "<C-i>", { desc = "跳转到下一个位置" })
map({ "n", "v" }, "<leader>o", "<C-o>", { desc = "跳转到上一个位置" })

-- map("n", "S", ":w<CR>")
map("n", ">", ">>")
map("n", "<", "<<")
map("n", "<leader><leader>", "<ESC>/<++><CR>:nohlsearch<CR>c4l")
-- 取消高亮
-- map('n', '<leader>h', ':nohl<CR>')
-- 退出 vim
map("n", "<C-q>", ":qa!<CR>")

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

map("n", "<A-j>", '"-yy"-P')
map("n", "<A-k>", '"-yy"-p')

map("n", "tx", ":r !figlet ")
map("n", "td", ":r !ls | grep . <CR>")

-- copy
map({ "v", "n" }, "y", '"+y')
map({ "v", "n" }, "Y", '"+yy')

map({ "v", "n" }, "p", '"+p')
map({ "v", "n" }, "P", '"+P')

-- commenting
map("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
map("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })

-- diagnostic
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
map("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
map("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
map("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
map("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
map("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
map("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

-- lazygit
if vim.fn.executable "lazygit" == 1 then
  map("n", "<leader>gg", function()
    Snacks.lazygit()
  end, { desc = "Lazygit (cwd)" })
  map("n", "<leader>gf", function()
    Snacks.lazygit.log_file()
  end, { desc = "Lazygit Current File History" })
  map("n", "<leader>gl", function()
    Snacks.lazygit.log()
  end, { desc = "Lazygit Log (cwd)" })
end

-- floating terminal
map("n", "<leader>ft", function()
  Snacks.terminal()
end, { desc = "Terminal (cwd)" })

-- new terminals
map("n", "<leader>h", "")
map("n", "<leader>v", "")

-- toggle options
Snacks.toggle.option("spell", { name = "Spelling" }):map "<leader>us"
Snacks.toggle.option("wrap", { name = "Wrap" }):map "<leader>uw"
Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map "<leader>uL"
Snacks.toggle.diagnostics():map "<leader>ud"
Snacks.toggle.line_number():map "<leader>ul"
Snacks.toggle
  .option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2, name = "Conceal Level" })
  :map "<leader>uc"
Snacks.toggle
  .option("showtabline", { off = 0, on = vim.o.showtabline > 0 and vim.o.showtabline or 2, name = "Tabline" })
  :map "<leader>uA"
Snacks.toggle.treesitter():map "<leader>uT"
Snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map "<leader>ub"
Snacks.toggle.dim():map "<leader>uD"
Snacks.toggle.animate():map "<leader>ua"
Snacks.toggle.indent():map "<leader>ug"
Snacks.toggle.scroll():map "<leader>uS"
Snacks.toggle.profiler():map "<leader>dpp"
Snacks.toggle.profiler_highlights():map "<leader>dph"

-- windows
map("n", "<leader>w", "<c-w>", { desc = "Windows", remap = true })
map("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>|", "<C-W>v", { desc = "Split Window Right", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })
Snacks.toggle.zoom():map("<leader>wm"):map "<leader>uZ"
Snacks.toggle.zen():map "<leader>uz"
