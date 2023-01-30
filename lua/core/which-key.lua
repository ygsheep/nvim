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
	["<leader><leader>"] = { name = "<leader>" },
	["<leader>"] = {
		q = { ":q<CR>", "Quit" },
		H = { "<c-w>h", "左移" },
		J = { "<c-w>j", "下移" },
		K = { "<c-w>k", "上移" },
		L = { "<c-w>l", "右移" },
		r = { "<Plug>TranslateR", "终端翻译" },
		x = { "<Plug>TranslateX", "终端翻译" },
	},
	["<leader>f"] = {
		name = "+file",
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		n = { "<cmd>enew<cr>", "New File" },
		b = { "<cmd>Telescope buffers<cr>", "Buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "help" },
		t = { "<cmd>Neotree toggle<CR>", "Tree" },
		y = { "<Plug>TranslateW", "翻译" }
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
		d = { "<cmd>lua require('dapui').toggle()<CR>", "Debug" },

	},
	["<LEADER>g"] = {
		name = "+Debug"
	},
	['<LEADER>a'] = { 'ggVG', "全选" },

})
