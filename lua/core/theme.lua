
-- noice.nvim
require("noice").setup({
	lsp = {
		progress = {
			enabled = false,
		},
		-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
	},
	-- you can enable a preset for easier configuration
	presets = {
		bottom_search = true, -- use a classic bottom cmdline for search
		command_palette = true, -- position the cmdline and popupmenu together
		long_message_to_split = true, -- long messages will be sent to a split
		inc_rename = false, -- enables an input dialog for inc-rename.nvim
		lsp_doc_border = true, -- add a border to hover docs and signature help
	},
})

local notify = require("notify")
notify.setup({
	-- "fade", "slide", "fade_in_slide_out", "static"
	stages = "static",
	on_open = nil,
	on_close = nil,
	timeout = 3000,
	fps = 1,
	render = "default",
	background_colour = "Normal",
	max_width = math.floor(vim.api.nvim_win_get_width(0) / 2),
	max_height = math.floor(vim.api.nvim_win_get_height(0) / 4),
	-- minimum_width = 50,
	-- ERROR > WARN > INFO > DEBUG > TRACE
	level = "TRACE",
})

vim.notify = notify

-- onedark
-- Lua
require('onedark').setup {
	style = 'cool',
	-- Lualine options --
	lualine = {
		transparent = false, -- lualine center bar transparency
	},
	diagnostics = {
		darker = true, -- darker colors for diagnostic
		undercurl = true,   -- use undercurl instead of underline for diagnostics
		background = true,    -- use background color for virtual text
	},
	transparent = false,  -- Show/hide background
	code_style = {
		comments = 'italic',
		keywords = 'italic', --  关键字：斜体
		functions = 'none',
		strings = 'none',
		variables = 'none'
	},
	term_colors = true, -- Change terminal color as per the selected theme style
	ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
	cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
}
require('onedark').load()
require("core.lualine")


