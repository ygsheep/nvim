-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- one-vim 主题插件
  use 'navarasu/onedark.nvim'
  use {
    'lukas-reineke/headlines.nvim',
    config = function()
      require('headlines').setup()
    end,
  }
  -- 颜色主题
  use {
    'glepnir/zephyr-nvim',
    requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
  }
  -- 状态栏
  use({
    "NTBBloodbath/galaxyline.nvim",
    config = function()
      require("galaxyline.themes.eviline")
    end,
  })
  -- 参考线对齐
  use "lukas-reineke/indent-blankline.nvim"
  -- 自动补全 代码提示
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin


  -- nvim-tree 目录
  use {'kyazdani42/nvim-tree.lua',requires = 'kyazdani42/nvim-web-devicons'}


  -- bufferline tap标签
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  -- vim 中文文档
  use { 'yianwillis/vimcdoc' }
  -- 翻译
  use { 'voldikss/vim-translator' }
end)
