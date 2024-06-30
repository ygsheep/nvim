return {
  ---------- color theme plugins ----------
  {
    'navarasu/onedark.nvim',
    config = function()
      -- onedark
      -- Lua
      require('onedark').setup {
        style = 'cool',
        -- Lualine options --
        lualine = {
          transparent = false, -- lualine center bar transparency
        },
        diagnostics = {
          darker = true,     -- darker colors for diagnostic
          undercurl = true,  -- use undercurl instead of underline for diagnostics
          background = true, -- use background color for virtual text
        },
        transparent = false, -- Show/hide background
        code_style = {
          comments = 'italic',
          keywords = 'italic', --  关键字：斜体
          functions = 'none',
          strings = 'none',
          variables = 'none'
        },
        term_colors = true,           -- Change terminal color as per the selected theme style
        ending_tildes = true,         -- Show the end-of-buffer tildes. By default they are hidden
        cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
      }
      require('onedark').load()
      require("core.lualine")
    end

  },
  { 'projekt0n/github-nvim-theme', lazy = true, version = 'v0.0.*' },

  	-- 参考线
	"lukas-reineke/indent-blankline.nvim",
	'NvChad/nvim-colorizer.lua', -- 识别颜色并且高亮 #000000


}
