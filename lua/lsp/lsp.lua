require("lsp.ui").setup()
require("lsp.lspsage")
require("lsp.format")
require('lsp.vimtex')

require("snippet.md-snippet")

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
})

local servers = {
	'rust_analyzer',
	'tsserver',
	"clangd",
	"pyright",
	"cmake",
	"lua_ls",
	"html",
	"jdtls",
	"marksman",
	"ltex",
}
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

require("mason-lspconfig").setup {
	ensure_installed = servers
}
local lspconfig = require('lspconfig')
-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		-- on_attach = my_custom_on_attach,
		capabilities = capabilities,
	}
end
