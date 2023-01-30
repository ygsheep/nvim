require("lsp-format").setup {}
require("lspconfig").gopls.setup { 
  on_attach = require("lsp-format").on_attach 
}
vim.cmd [[cabbrev wq execute "Format sync" <bar> wq]]