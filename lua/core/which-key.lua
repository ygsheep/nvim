local wk = require("which-key")
vim.o.timeout = true
vim.o.timeoutlen = 300
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar

-- add which-key config
wk.setup({
	plugins = {
		marks = true,   -- shows a list of your marks on ' and `
		registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
		-- the presets plugin, adds help for a bunch of default keybindings in Neovim
		-- No actual key bindings are created
		spelling = {
			enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
			suggestions = 20, -- how many suggestions should be shown in the list?
		},
		presets = {
			operators = true, -- adds help for operators like d, y, ...
			motions = true,   -- adds help for motions
			text_objects = true, -- help for text objects triggered after entering an operator
			windows = true,   -- default bindings on <c-w>
			nav = true,       -- misc bindings to work with windows
			z = true,         -- bindings for folds, spelling and others prefixed with z
			g = true,         -- bindings for prefixed with g
		},
	},
	-- add operators that will trigger motion and text object completion
	-- to enable all native operators, set the preset / operators plugin above
	operators = { gc = "Comments" },
	key_labels = {
		-- override the label used to display some keys. It doesn't effect WK in any other way.
		-- For example:
		-- ["<space>"] = "SPC",
		-- ["<cr>"] = "RET",
		-- ["<tab>"] = "TAB",
	},
	motions = {
		count = true,
	},
	icons = {
		breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
		separator = "➜", -- symbol used between a key and it's label
		group = "",     -- symbol prepended to a group
	},
	popup_mappings = {
		scroll_down = "<c-d>", -- binding to scroll down inside the popup
		scroll_up = "<c-u>", -- binding to scroll up inside the popup
	},
	window = {
		border = "double",      -- none, single, double, shadow
		position = "bottom",    -- bottom, top
		margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
		padding = { 1, 2, 1, 2 }, -- extra window padding [top, right, bottom, left]
		winblend = 5,           -- value between 0-100 0 for fully opaque and 100 for fully transparent
	},
	layout = {
		height = { min = 4, max = 25 },                                                -- min and max height of the columns
		width = { min = 20, max = 50 },                                                -- min and max width of the columns
		spacing = 3,                                                                   -- spacing between columns
		align = "center",                                                              -- align columns left, center or right
	},
	ignore_missing = false,                                                          -- enable this to hide mappings for which you didn't specify a label
	hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "^:", "^ ", "^call ", "^lua " }, -- hide mapping boilerplate
	show_help = true,                                                                -- show a help message in the command line for using WhichKey
	show_keys = true,                                                                -- show the currently pressed key and its label as a message in the command line
	triggers = "auto",                                                               -- automatically setup triggers
	-- triggers = {"<leader>"} -- or specifiy a list manually
	-- list of triggers, where WhichKey should not wait for timeoutlen and show immediately
	triggers_nowait = {
		-- marks
		"`",
		"'",
		"g`",
		"g'",
		-- registers
		'"',
		"<c-r>",
		-- spelling
		"z=",
	},
	triggers_blacklist = {
		-- list of mode / prefixes that should never be hooked by WhichKey
		-- this is mostly relevant for keymaps that start with a native binding
		i = { "j", "k" },
		v = { "j", "k" },
	},
	-- disable the WhichKey popup for certain buf types and file types.
	-- Disabled by deafult for Telescope
	disable = {
		buftypes = {},
		filetypes = {},
	},
})

wk.register({
	["<leader>"] = {
		b = { name = "Breakpoint" },
		B = { name = "Breakpoint Message" },
		c = { ":bdelete<CR>", "Colse Buffer" },
		q = { ":q<CR>", "Quit" },
		e = { "<cmd>Neotree<CR>", "Open Tree" },
		o = { name = "回退⬆️" },
		i = { name = "前进⬇️" },
		h = {
			name = "取消搜索高亮"
		},
		s = { name = "分屏" },
		g = {
			name = "gitsigns",
			d = { name = "" },
			p = { name = "" },
		},
		["<space>"] = { name = "<++>" },
	},
	["<leader>f"] = {
		name = "+file",
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		n = { "<cmd>enew<cr>", "New File" },
		g = { "<cmd>Telescope live_grep", "Find Text" },
		b = { "<cmd>Telescope buffers<cr>", "Find buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "帮助" },
		y = { "<Plug>TranslateW", "窗口翻译" }
	},
	["<LEADER>d"] = {
		name = "Dap and Debug",
		u = { "<cmd>lua require('dapui').toggle()<CR>", "打开调试窗口" },
		b = { name = "Breakpoint" },
		B = { name = "Breakpoint Message" },
		l = { name = "List Breakpoint" },
		s = { name = "list var" },

	},
	["<LEADER>l"] = {
		name = "LSP",
		f = { "<cmd>lua vim.lsp.buf.format()<CR>", "代码格式化" },
		i = { ":Mason<CR>", "打开LSP管理器" },
		u = { ":Lazy<CR>", "Lazy UI" },
		c = { ":e ~/.config/nvim <CR>:Neotree<CR>", "打开配置文件夹📂" },
		t = { "<cmd>TroubleToggle<CR>", "LSP Trouble" },
		w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
		d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
		q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
		l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
		r = { "<cmd>TroubleToggle lsp_references<cr>", "references" }
	},
	["<LEADER>g"] = {
		name = "代码预览"
	},
	["<LEADER>w"] = {
		name = "工作区",
		a = { name = "添加当前文件夹到工作区" },
		d = { name = "删除当前工作区" },
		l = { name = "查看全部工作区" },

	},
	["\\w"] = { name = "我的文档(wiki)",
		-- i = { name = "" },
		s = { name = "在多个 wiki 中选择并打开该 wiki 的目录文件" },
		t = { name = "在新标签（Tab）中打开 wiki 目录文件" },
		w = { name = "打开默认wiki所在文件夹📂" },
		d = { name = "删除当前 wiki 文件" },
		r = { name = "重命名当前 wiki 文件 " },
	},
	["\\f"] = {
		name = "Autoformat",
		cmd = ":Autoformat<CR>"
	}
})

-- venn.nvim: enable or disable keymappings
function _G.Toggle_venn()
	local venn_enabled = vim.inspect(vim.b.venn_enabled)
	if venn_enabled == "nil" then
		vim.b.venn_enabled = true
		vim.cmd [[setlocal ve=all]]
		vim.cmd("Lazy load venn.nvim")
		-- draw a line on HJKL keystokes
		vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", { noremap = true })
		-- draw a box by pressing "f" with visual selection
		vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", { noremap = true })
	else
		vim.cmd [[setlocal ve=]]
		vim.cmd [[mapclear <buffer>]]
		vim.b.venn_enabled = nil
	end
end

-- toggle keymappings for venn using <leader>v
vim.api.nvim_set_keymap('n', '<leader>v', ":lua Toggle_venn()<CR>", { noremap = true })
wk.register({
	["<leader>v"] = { name = "Toggle Draw" }
})
