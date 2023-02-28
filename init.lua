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

-- instaing PLugin
require("setup")

-- import config
require("user/options")
require("user/keymaps")

-- ------------- 插件 ----------------------
require("core.conf")
-- lsp 补全
require("lsp/lsp")
require("cmp.conf")
-- Debug
require("dap.dap")
require("dap.sniprun")
-- other --
require("dap.cmake-tools")

