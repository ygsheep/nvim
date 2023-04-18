local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

-- bufferline 标签
vim.opt.termguicolors = true
bufferline.setup({
	options = {
		separator_style = "thin",
		buffer_close_icon = "",
		-- vim:E492 Bdelete
		close_command = "bdelete %d",
		close_icon = "",
		indicator = {
			style = "icon",
			icon = " ",
		},
		left_trunc_marker = "",
		modified_icon = "●",
		-- 使用 nvim 内置lsp
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " "
				or (e == "warning" and " " or "" )
				s = s .. n .. sym
			end
			return s
		end,
		hover = {
			enabled = true,
			delay = 200,
			reveal = {'close'}
		},
		-- 左侧让出 nvim-tree 的位置
		offset_separator = true,
		offsets = {
			{
				filetype = "neo-tree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
				padding = 1
			},
			{ filetype = "NvimTree", text = "", padding = 1 },
			{ filetype = "Outline", text = "", padding = 1 },
		},
		right_mouse_command = "bdelete! %d",
		right_trunc_marker = "",
		show_close_icon = true,
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
		}
	}
})

vim.keymap.set("n","th","<cmd>BufferLineCyclePrev<CR>")
vim.keymap.set("n","tl","<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n","tj","<cmd>BufferLineCloseRight<CR>")
vim.keymap.set("n","tk","<cmd>BufferLineCloseLeft<CR>")
vim.keymap.set("n","tb","<cmd>bdelete<CR>")
