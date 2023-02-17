-- example using a list of specs with the default options
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- requires -> neo-tree
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	"MunifTanjim/nui.nvim",
	'rcarriga/nvim-notify',
	"folke/neoconf.nvim",
	"folke/neodev.nvim",
	'rcarriga/nvim-notify', -- 提示窗口

	-- <LEADER> windows
	"folke/which-key.nvim",


	-- theme.lua
	'akinsho/bufferline.nvim', -- tap windosw
	-- 'windwp/windline.nvim', -- 状态栏
	'nvim-lualine/lualine.nvim',
	-- 启动窗口
	'glepnir/dashboard-nvim',
	'goolord/alpha-nvim',
	-- 参考线
	"lukas-reineke/indent-blankline.nvim",
	'NvChad/nvim-colorizer.lua', -- 颜色高亮

	-- ui
	{
		'glepnir/lspsaga.nvim',
		event = 'BufRead',
	},
	'rmagatti/goto-preview',
	{
		'weilbith/nvim-code-action-menu',
		cmd = 'CodeActionMenu',
	},

	-- search plugin
	'nvim-telescope/telescope.nvim',


	-- 注释
	'numToStr/Comment.nvim',
	"folke/todo-comments.nvim",
	-- file search
	'nvim-telescope/telescope.nvim',
	-- tree
	"nvim-neo-tree/neo-tree.nvim",
	-- color theme
	'navarasu/onedark.nvim',
	'Mofiqul/vscode.nvim',
	'Th3Whit3Wolf/one-nvim',
	'glepnir/zephyr-nvim',

	-- 更好的高亮
	'nvim-treesitter/nvim-treesitter',
	'p00f/nvim-ts-rainbow', -- 括号
	"windwp/nvim-autopairs", -- 自动补全括号
	-- Lsp install ui : mason
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	-- "lukas-reineke/lsp-format.nvim", -- 格式化
	'jose-elias-alvarez/null-ls.nvim',
	'MunifTanjim/prettier.nvim',


	-- cmp 补全
	'hrsh7th/nvim-cmp', -- Autocompletion plugin
	'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
	'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "<CurrentMajor>.*",
		-- install jsregexp (optional!).
		build = "make install_jsregexp"
	},
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	{ 'tzachar/cmp-tabnine', build = 'bash install.sh' },

	-- debug
	'mfussenegger/nvim-dap',
	'rcarriga/nvim-dap-ui',
	{ 'sakhnik/nvim-gdb', lazy = true },
	'theHamsta/nvim-dap-virtual-text',
	-- 'norcalli/snippets.nvim', -- 运行代码片段
	{ 'michaelb/sniprun', build = 'bash install.sh' },
	-- cmake 集成
	'Civitasv/cmake-tools.nvim',

	'lewis6991/gitsigns.nvim',
	-- 更好的操作
	'dominikduda/vim_current_word', -- 高亮当前单词	
	'ggandor/leap.nvim', -- 移动插件
	'ggandor/flit.nvim',
	'Pocco81/auto-save.nvim', -- 自动保存

	'voldikss/vim-translator', -- 翻译
	"potamides/pantran.nvim", -- translator

	-- COC补全
	{ 'neoclide/coc.nvim', branch='release'}
})
