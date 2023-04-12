local wk = require("which-key")
vim.o.timeout = true
vim.o.timeoutlen = 300
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar



wk.register({
	["<leader>["] = { "<cmd>ze<CR>", "折叠" },
	["<leader>]"] = { "<cmd>zo<CR>", "展开" },
	-- ["<leader><leader>"] = { name = "<leader>" },
	["<leader>"] = {
		q = { ":q<CR>", "Quit" },
		H = { "<c-w>h", "左移" },
		J = { "<c-w>j", "下移" },
		K = { "<c-w>k", "上移" },
		L = { "<c-w>l", "右移" },
		r = { "<Plug>TranslateR", "终端翻译" },
		x = { "<Plug>TranslateX", "终端翻译" },
		e = { "<cmd>Neotree<CR>", "目录" },
	},
	["<leader>f"] = {
		name = "+file",
		f = { "<cmd>Telescope find_files<cr>", "搜索文件📄" },
		r = { "<cmd>Telescope oldfiles<cr>", "搜索最近更新文件📄" },
		n = { "<cmd>enew<cr>", "新文件📄" },
		b = { "<cmd>Telescope buffers<cr>", "Buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "帮助" },
		t = { ":%s/", "文本替换" },
		y = { "<Plug>TranslateW", "窗口翻译" }
	},
	["<LEADER>c"] = {
		name = "+Code"
	},
	["<LEADER>d"] = {
		name = "+Dap"
	},
	["<LEADER>l"] = {
		name = "+LSP",
		f = { "<cmd>lua vim.lsp.buf.format()<CR>", "代码格式化" },
		d = { "<cmd>lua require('dapui').toggle()<CR>", "打开调试窗口" },
		i = { ":Mason<CR>", "打开LSP管理器" },
	},
	["<LEADER>g"] = {
		name = "+代码预览"
	},
	[","] = {
		name = "调试与运行",
		r = { ":lua require'dap'.continue()<CR>", "🟢运行" },
		i = { name = "单步进入" },
		n = { name = "单步运行" },
	},
	["c/"] = { name = "注释" },
	["<leader>q"] = { name = "退出" },
	["<leader>R"] = { name = "浮动目录🌳" },
	["<leader>o"] = { name = "回退⬆️" },
	["<leader>i"] = { name = "前进⬇️" },
	["<leader>s"] = { name = "分屏" },
	["<leader>t"] = { name = "gitsigns" },
	["<leader><space>"] = { name = "<++>" },
	["<leader>n"] = {
		h = { name = "取消搜索高亮" },
	},
	["\\w"] = { name = "我的文档(wiki)",
		-- i = { name = "" },
		s = { name = "在多个 wiki 中选择并打开该 wiki 的目录文件" },
		t = { name = "在新标签（Tab）中打开 wiki 目录文件" },
		w = { name = "打开默认wiki所在文件夹📂" },
		d = { name = "删除当前 wiki 文件" },
		r = { name = "重命名当前 wiki 文件 " },
	},
})
