# 我的**Neovim**配置
- lazy 管理插件
- init.lua 人口文件

## 依赖
### Arch 
```bash
sudo pacman -S neovim python3 nodejs npm ripgrep fzf

pip3 install pynvim

npm i neovim -g
# C++ 编译与调试
sudo pacman -S gcc cmake make gdb clang xclib
# LSP python补全

# :checkhealth，会进行基本环境的检查

```

Tree 文件结构
```bash

.
├── init.lua
├── lazy-lock.json
├── lua
│   ├── cmp
│   │   ├── cmp.lua
│   │   ├── cmp-tabnine.lua
│   │   └── conf.lua
│   ├── core
│   │   ├── alpha.lua
│   │   ├── autopairs.lua
│   │   ├── autosave.lua
│   │   ├── blankline.lua
│   │   ├── comment.lua
│   │   ├── conf.lua
│   │   ├── gitsigns.lua
│   │   ├── leap.lua
│   │   ├── lualine.lua
│   │   ├── neo-tree.lua
│   │   ├── nvim-colorizer.lua
│   │   ├── nvim-notify.lua
│   │   ├── other.lua
│   │   ├── telescope.lua
│   │   ├── theme.lua
│   │   ├── todo-comments.lua
│   │   ├── translator.lua
│   │   ├── treesitter.lua
│   │   └── which-key.lua
│   ├── dap
│   │   ├── cmake-tools.lua
│   │   ├── conf.lua
│   │   ├── dap-cpp.lua
│   │   ├── dap.lua
│   │   ├── dap-python.lua
│   │   ├── dap-ui.lua
│   │   ├── dap-virtual-text.lua
│   │   ├── dep-util.lua
│   │   ├── gdb.lua
│   │   ├── snippets.lua
│   │   └── sniprun.lua
│   ├── lsp
│   │   ├── format.lua
│   │   ├── lsp.lua
│   │   ├── lspsage.lua
│   │   └── ui.lua
│   ├── setup.lua
│   └── user
│       ├── keymaps.lua
│       └── options.lua
├── lua-old
│   ├── config.vim
│   ├── init-config.lua
│   ├── init-keybind.lua
│   ├── init-packer.lua
│   ├── init-theme.lua
│   ├── keybind.vim
│   ├── lsp
│   │   ├── cmp.lua
│   │   ├── config.lua
│   │   ├── formatter.lua
│   │   ├── setup.lua
│   │   ├── theme.lua
│   │   └── ui.lua
│   ├── plug.vim
│   ├── setup.lua
│   ├── user
│   │   ├── keymaps.lua
│   │   ├── lsp.lua
│   │   └── options.lua
│   └── which.lua
├── README.md
└── test
    ├── main
    ├── main.cpp
    └── main.py

11 directories, 64 files
```

## 插件列表
setup.lua
```lua
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

	'ggandor/leap.nvim', -- 移动插件
	'ggandor/flit.nvim',
	'Pocco81/auto-save.nvim', -- 自动保存

	'voldikss/vim-translator', -- 翻译
	"potamides/pantran.nvim", -- translator

```

## 按键表格
### 移动

| KEY  |      |
| :--: | :--: |
|  h   | 左移 |
|  j   | 下移 |
|  k   | 上移 |
|  l   | 右移 |

翻译

使用`<LEADER>`+ KEY 
| KEY  | Translator     |
| :--: | :--: |
|  fy  | 窗口翻译     |
|  r    | 终端翻译     |
|      |      |

