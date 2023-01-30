-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'lewis6991/impatient.nvim' -- 加快启动速度
	use 'nvim-lua/plenary.nvim'
	use 'rcarriga/nvim-notify'
	-- one-vim 主题插件
	use 'navarasu/onedark.nvim'
	use 'lukas-reineke/headlines.nvim'
	-- 参考线对齐
	use "lukas-reineke/indent-blankline.nvim"
	-- 状态栏
	use { 'windwp/windline.nvim',
		config = function()
			--require('wlsample.airline')
			require('wlsample.vscode')
			-- require('wlsample.airline_anim')
		end, }
	-- winbar
	use({
		"utilyre/barbecue.nvim",
		requires = {
			"neovim/nvim-lspconfig",
			"SmiteshP/nvim-navic",
		},
		after = "nvim-web-devicons", -- keep this if you're using NvChad
	})
	use "folke/which-key.nvim"
	-- git
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}

	-- 多开终端
	use { "akinsho/toggleterm.nvim", tag = '*',
		config = function()
			require("toggleterm").setup()
		end }
	-- 搜索功能
	use 'gfanto/fzf-lsp.nvim'
	use { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' }
	-- 在从编辑历史记录中选择文件时提供智能优先级
	use { "kkharji/sqlite.lua" }
	-- 开屏窗口
	use 'glepnir/dashboard-nvim'
	use 'goolord/alpha-nvim'


	-- 自动补全 代码提示
	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
	-- formatter
	use "lukas-reineke/lsp-format.nvim"
	-- 自动补全括号
	use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }
	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin

	-- UI
	use { "glepnir/lspsaga.nvim", branch = "main" }
	use 'simrat39/symbols-outline.nvim'
	use 'rmagatti/goto-preview'
	use { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }
	-- use 'ldelossa/litee.nvim'
	-- use 'ldelossa/litee-filetree.nvim'
	-- use 'ldelossa/litee-symboltree.nvim'
	-- use 'ldelossa/litee-bookmarks.nvim'
	use {
		'nvim-telescope/telescope.nvim',
		-- tag = '0.1.0',
		branch = '0.1.x'
	}

	-- 代码运行器插件
	use { 'michaelb/sniprun', run = 'bash ./install.sh' }
	use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
	use { 'sakhnik/nvim-gdb' }

	-- Latex
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			{ "kdheepak/cmp-latex-symbols" },
		},
		sources = {
			{
				name = "latex_symbols",
				option = {
					strategy = 0, -- mixed
				},
			},
		},
	})

	-- nvim-tree 目录
	use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
	-- bufferline tap标签
	use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
	-- 注释
	use { 'numToStr/Comment.nvim' }
	-- Markdown
	use { 'lukas-reineke/headlines.nvim' }
	-- treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	-- vim 中文文档
	use { 'yianwillis/vimcdoc' }
	-- 翻译
	use { 'voldikss/vim-translator' }
end)
