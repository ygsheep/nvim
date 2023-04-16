
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
-- require('vscode').change_style('light')




-- local windline = require('windline')
-- require('wlsample.vscode')
-- require('wlsample.airline_anim')
-- require('wlsample.vscode').setup({})



-- 状态栏
-- require('wlsample.airline')


-- noice.nvim 
require("noice").setup({
  lsp = {
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
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})


