
-- import config
require("user/options")
require("user/keymaps")

-- instaing PLugin
require("setup")
-- ------------- 插件 ----------------------
require("core.conf")
-- lsp 补全
require("lsp/lsp")
require("cmp.conf")
-- Debug
require("dap.dap")
-- other --
require("dap.sniprun")
require("dap.cmake-tools")
require("dap.gdb")

