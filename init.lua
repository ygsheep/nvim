-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 加载配置
require("config.options")
require("config.keymaps")

require("lsp.lsp")
require("cmp.conf")

