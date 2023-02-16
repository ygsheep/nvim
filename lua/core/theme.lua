-- bufferline 标签
vim.opt.termguicolors = true
require("bufferline").setup {}

-- onedark
-- Lua
require('onedark').setup {
	style = 'cool'
	-- style = 'dark'
}
require('onedark').load()

require("core.lualine")

-- Lua:
-- For dark theme (neovim's default)
-- vim.o.background = 'dark'
-- For light theme
-- vim.o.background = 'ligkt'
--
-- local c = require('vscode.colors').get_colors()
-- require('vscode').setup({
-- 	-- Enable transparent background
-- 	transparent = true,
--
-- 	-- Enable italic comment
-- 	italic_comments = true,
--
-- 	-- Disable nvim-tree background color
-- 	disable_nvimtree_bg = true,
--
-- 	-- Override colors (see ./lua/vscode/colors.lua)
-- 	color_overrides = {
-- 		vscLineNumber = '#FFFFFF',
-- 	},
--
-- 	-- Override highlight groups (see ./lua/vscode/theme.lua)
-- 	group_overrides = {
-- 		-- this supports the same val table as vim.api.nvim_set_hl
-- 		-- use colors from this colorscheme by requiring vscode.colors!
-- 		Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
-- 	}
-- })
require("bufferline").setup({
	options = {
		buffer_close_icon = "",
		close_command = "Bdelete %d",
		close_icon = "",
		indicator = {
			style = "icon",
			icon = " ",
		},
		left_trunc_marker = "",
		modified_icon = "●",
		offsets = { { filetype = "NvimTree", text = "EXPLORER", text_align = "center" } },
		right_mouse_command = "Bdelete! %d",
		right_trunc_marker = "",
		show_close_icon = false,
		show_tab_indicators = true,
	},
	highlights = {
		fill = {
			fg = { attribute = "fg", highlight = "Normal" },
			bg = { attribute = "bg", highlight = "StatusLineNC" },
		},
		background = {
			fg = { attribute = "fg", highlight = "Normal" },
			bg = { attribute = "bg", highlight = "StatusLine" },
		},
		buffer_visible = {
			fg = { attribute = "fg", highlight = "Normal" },
			bg = { attribute = "bg", highlight = "Normal" },
		},
		buffer_selected = {
			fg = { attribute = "fg", highlight = "Normal" },
			bg = { attribute = "bg", highlight = "Normal" },
		},
		separator = {
			fg = { attribute = "bg", highlight = "Normal" },
			bg = { attribute = "bg", highlight = "StatusLine" },
		},
		separator_selected = {
			fg = { attribute = "fg", highlight = "Special" },
			bg = { attribute = "bg", highlight = "Normal" },
		},
		separator_visible = {
			fg = { attribute = "fg", highlight = "Normal" },
			bg = { attribute = "bg", highlight = "StatusLineNC" },
		},
		close_button = {
			fg = { attribute = "fg", highlight = "Normal" },
			bg = { attribute = "bg", highlight = "StatusLine" },
		},
		close_button_selected = {
			fg = { attribute = "fg", highlight = "Normal" },
			bg = { attribute = "bg", highlight = "Normal" },
		},
		close_button_visible = {
			fg = { attribute = "fg", highlight = "Normal" },
			bg = { attribute = "bg", highlight = "Normal" },
		},
	},
})
-- require('vscode').change_style('light')




-- local windline = require('windline')
-- require('wlsample.vscode')
-- require('wlsample.airline_anim')
-- require('wlsample.vscode').setup({})



-- 状态栏
-- require('wlsample.airline')
