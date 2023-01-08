-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- one-vim 主题插件
  use 'navarasu/onedark.nvim'
  use 'lukas-reineke/headlines.nvim'
  -- 多开终端
  use "akinsho/toggleterm.nvim"
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
  -- 搜索功能
  use 'gfanto/fzf-lsp.nvim'
  use 'nvim-lua/plenary.nvim'
  -- 在从编辑历史记录中选择文件时提供智能优先级
  use { "kkharji/sqlite.lua" }
  -- 开屏
  use 'glepnir/dashboard-nvim'
  use 'goolord/alpha-nvim'

  -- 参考线对齐
  use "lukas-reineke/indent-blankline.nvim"
  
  -- 自动补全 代码提示
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'anott03/nvim-lspinstall'
  -- 自动补全括号
  use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }

  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  -- UI 
  use { "glepnir/lspsaga.nvim",branch = "main" }
  use 'simrat39/symbols-outline.nvim'
  use 'rmagatti/goto-preview'
  use {'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }
  -- 代码运行器插件
  use { 'michaelb/sniprun', run = 'bash ./install.sh'}
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use { 'sakhnik/nvim-gdb' }


  -- nvim-tree 目录
  use {'kyazdani42/nvim-tree.lua',requires = 'kyazdani42/nvim-web-devicons'}

  -- bufferline tap标签
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

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
