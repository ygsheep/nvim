require("lsp.ui").setup()
require("lsp.lspsage")
require("lsp.format")
require('lsp.vimtex')
require('lsp.lspconfig')
require('lsp.lsphint')


require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
})
-- [Available LSP servers]
-- https://github.com/williamboman/mason-lspconfig.nvim#default-configuration
local servers = {
	'rust_analyzer',
	'tsserver',
	"pyright",
	"cmake",
	"lua_ls",
	"html",
	"asm_lsp",
	"marksman",
	"jdtls",
	"jsonls",
	"ltex",
	"golangci_lint_ls",
	"sqlls"
}
vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

require("mason-lspconfig").setup {
	ensure_installed = servers
}
local capabilities = require('cmp_nvim_lsp').default_capabilities()

capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true
}
local lspconfig = require('lspconfig')
-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		-- on_attach = my_custom_on_attach,
		capabilities = capabilities,
	}
end


