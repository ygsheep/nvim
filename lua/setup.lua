require("lazy").setup({
	---------- UI Plugins ----------------
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	"folke/neoconf.nvim",
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			'rcarriga/nvim-notify', -- 提示窗口
		}
	},
	-- <LEADER> windows
	"folke/which-key.nvim",
	-- 标签栏 Tab
	{'akinsho/bufferline.nvim', version = "v3.*", dependencies = 'nvim-tree/nvim-web-devicons'},
	-- 'windwp/windline.nvim', -- 状态栏
	'nvim-lualine/lualine.nvim',
	-- 启动窗口
	'glepnir/dashboard-nvim',
	'goolord/alpha-nvim',
	-- 参考线
	"lukas-reineke/indent-blankline.nvim",
	'NvChad/nvim-colorizer.lua', -- 识别颜色并且高亮 #000000
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
	-- {
	-- 	'simrat39/symbols-outline.nvim',
	-- 	key = { "T" },
	-- 	config = function()
	-- 		require('symbols-outline').setup()
	-- 		vim.keymap.set("n","T","<cmd>SymbolsOutline<CR>")
	-- 	end
	-- },


	-----------文件插件-----------
	-- tree
	{ "nvim-neo-tree/neo-tree.nvim" ,config = function() require("core.neo-tree") end},

	-- 加载大文件：如果打开的文件很大，此插件会禁用某些功能。
	-- 要禁用的文件大小和功能是可配置的
	"LunarVim/bigfile.nvim",
	-- search plugin
	{ 'nvim-telescope/telescope.nvim'},
	'brooth/far.vim',
	{ 'junegunn/fzf',     build = "cd ~/.fzf && ./install --all" },
	{ 'junegunn/fzf.vim', after = "fzf" },



	---------- color theme plugins ----------
	'navarasu/onedark.nvim',
	-- 'Th3Whit3Wolf/one-nvim',
	-- 更好的高亮
	{ 'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'p00f/nvim-ts-rainbow', -- 括号
		}
	},
	-- Lsp install ui : mason
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		}
	},
	'jose-elias-alvarez/null-ls.nvim',
	'MunifTanjim/prettier.nvim',



	----------- LSP Plugins ----------
	-- cmp 补全
	{
		'hrsh7th/nvim-cmp', -- Autocompletion plugin
		-- load cmp on InsertEnter
		event = "InsertEnter",
		-- these dependencies will only be loaded when cmp loads
		-- dependencies are always lazy-loaded unless specified otherwise
		dependencies = {
			'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
			{ 'tzachar/cmp-tabnine', build = 'bash install.sh' },
		},
	},
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "<CurrentMajor>.*",
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
		lazy  = true,
		dependencies = {
			"rafamadriz/friendly-snippets",
			"onsails/lspkind.nvim",
		}
	},

	{
		'SirVer/ultisnips',
		dependencies = { 'honza/vim-snippets' },
	},
	{
			"folke/trouble.nvim",
			lazy = true,
			cmd = { "TroubleToggle", "Trouble", "TroubleRefresh" },
			config = function()
					require("trouble").setup()
			end,
	},
	-- config Path: lsp/lsphint.lua
	"lvimuser/lsp-inlayhints.nvim",
	"p00f/clangd_extensions.nvim",

----------- debug Plugins ----------
	{
		'rcarriga/nvim-dap-ui',
		lazy = true,
		dependencies = {
			"folke/neodev.nvim",
			'mfussenegger/nvim-dap',
			'leoluz/nvim-dap-go',
			'mfussenegger/nvim-dap-python',
			'theHamsta/nvim-dap-virtual-text',
		}
	},
	{ 'sakhnik/nvim-gdb', build = ':!./install.sh',      lazy = true },
	-- snippets.nvim -- 运行代码片段
	{
		'michaelb/sniprun',
		lazy = true ,
		build = 'bash install.sh'
	},
	-- cmake 集成
	{
		'Civitasv/cmake-tools.nvim',
		lazy = true,
		ft = { "CMakeLists.txt", "cpp", "c","hpp","h"}
	},

	---------- Code Plugins --------------
	'numToStr/Comment.nvim', -- 注释
	"folke/todo-comments.nvim", --TEST: todo-comments 
	'lewis6991/gitsigns.nvim', --  gitsigns
	"windwp/nvim-autopairs", -- 自动补全括号
	-- 增强 neovim 中的宏的功能
	-- q：开始/结束录制宏
	-- Q：执行当前选择的宏
	-- <A-q>：切换宏槽位
	-- cq：编辑当前槽位的宏
	-- yq：复制当前槽位的宏
	{
		"chrisgrieser/nvim-recorder",
		lazy = true,
    keys = { "q", "Q", "<A-q>", "cq", "yq" },
    config = function()
        require("recorder").setup({
            slots = { "a", "b", "c" },
            mapping = {
                startStopRecording = "q",
                playMacro = "Q",
                switchSlot = "<A-q>",
                editMacro = "cq",
                yankMacro = "yq",
                -- addBreakPoint = "###",
            },
        })
    end,
	},
	-- 代码折叠
	{
		'kevinhwang91/nvim-ufo',
		dependencies = 'kevinhwang91/promise-async',
		config = function()
			require('core.nvim-ufo')
		end
	},
	-- 更好的操作
	'dominikduda/vim_current_word', -- 高亮当前单词
	'ggandor/leap.nvim', -- 移动插件
	-- 'ggandor/flit.nvim',
	'rhysd/accelerated-jk', -- 加速移动jk
	'Pocco81/auto-save.nvim', -- 自动保存
	'mbbill/undotree', --撤销插件
	'voldikss/vim-translator', -- 翻译
	-- 'bujnlc8/vim-translator',
	'yianwillis/vimcdoc', --中文文档
	{ 'mg979/vim-visual-multi', tag = 'master' },
	-- COC补全
	-- { 'neoclide/coc.nvim',      branch = 'release' },
	-- 语言支持
	{
		'iamcco/markdown-preview.nvim',
		build = 'cd app && npm install',
		dependencies = {
			'mzlogin/vim-markdown-toc',

		},
		config = function()
			vim.g.mkdp_browser = "chromium"
		end,
	},
	'vim-autoformat/vim-autoformat',
	-- Latex language
	{ 'lervag/vimtex',ft = { "tex" },lazy = true},
	--  text code
	'gcmt/wildfire.vim',
	'tpope/vim-surround',
	'vimwiki/vimwiki', -- 个人wiki插件

	-- 数据库UI
	{
		'kristijanhusak/vim-dadbod-ui',
		lazy = false,
		dependencies = {
			'tpope/vim-dadbod',
		}
	},

	---------- other ----------
	'equalsraf/neovim-gui-shim', --  nvim-qt
	{ "jbyuki/venn.nvim", lazy = true} --draw Ascll

})

