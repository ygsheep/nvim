require("lsp.ui").setup()
require("lsp.lspsage")
require("lsp.format")
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
	"sumneko_lua",
	"clangd",
	"pyright",
	"cmake"

}
require("mason-lspconfig").setup {
	ensure_installed = servers

}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").sumneko_lua.setup {
	capabilities = capabilities,
}


require("lspconfig").cmake.setup {
	capabilities = capabilities,
}

local lspconfig = require('lspconfig')

vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]
local skipped_servers = {
	"angularls",
	"ansiblels",
	"ccls",
	"csharp_ls",
	"cssmodules_ls",
	"denols",
	"ember",
	"emmet_ls",
	"eslint",
	"eslintls",
	"glint",
	"golangci_lint_ls",
	"gradle_ls",
	"graphql",
	"jedi_language_server",
	"ltex",
	"neocmake",
	"ocamlls",
	"phpactor",
	"psalm",
	"pylsp",
	"quick_lint_js",
	"reason_ls",
	"rnix",
	"rome",
	"ruby_ls",
	"ruff_lsp",
	"scry",
	"solang",
	"solc",
	"solidity_ls",
	"sorbet",
	"sourcekit",
	"sourcery",
	"spectral",
	"sqlls",
	"sqls",
	"stylelint_lsp",
	"svlangserver",
	"tflint",
	"verible",
	"vuels",
}

local skipped_filetypes = { "markdown", "rst", "plaintext", "toml", "proto" }


-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		-- on_attach = my_custom_on_attach,
		capabilities = capabilities,
	}
end
