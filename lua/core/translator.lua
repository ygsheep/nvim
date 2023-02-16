local status_ok, alpha = pcall(require, "pantran")
if not status_ok then
	return
end

-- 翻译配置
vim.cmd [[
  let g:translator_target_lang = 'zh'
  let g:translator_source_lang = 'auto'
  let g:translator_default_engines = ['youdao','bing']
 " nmap <silent> <Leader>tt <Plug>Translate
 " vmap <silent> <Leader>tv <Plug>TranslateV
 " nmap <silent> <Leader>fy <Plug>TranslateW
 " vmap <silent> <Leader>fy <Plug>TranslateWV
 " nmap <silent> <Leader>r <Plug>TranslateR
 " vmap <silent> <Leader>r <Plug>TranslateRV
 " nmap <silent> <Leader>x <Plug>TranslateX
  nnoremap <silent><expr> <M-f> translator#window#float#has_scroll() ?
  \ translator#window#float#scroll(1) : "\<M-f>"
  nnoremap <silent><expr> <M-b> translator#window#float#has_scroll() ?
  \ translator#window#float#scroll(0) : "\<M-f>"
]]


local pantran = require("pantran")


pantran.setup {
	-- Default engine to use for translation. To list valid engine names run
	-- `:lua =vim.tbl_keys(require("pantran.engines"))`.
	default_engine = "argos",
	-- default_engine = "yandex",
	-- Configuration for individual engines goes here.
	engines = {
		argos = {
			default_source = "auto",
			default_target = "zh"
		},
	},
	controls = {
		mappings = {
			edit = {
				n = {
					-- Use this table to add additional mappings for the normal mode in
					-- the translation window. Either strings or function references are
					-- supported.
					["j"] = "gj",
					["k"] = "gk"
				},
				i = {
					-- Similar table but for insert mode. Using 'false' disables
					-- existing keybindings.
					["<C-y>"] = true,
					["<C-a>"] = require("pantran.ui.actions").yank_close_translation
				}
			},
			-- Keybindings here are used in the selection window.
			select = {
				n = {
					-- ...
				}
			}
		}
	}
}

local opts = { noremap = true, silent = true, expr = true }
vim.keymap.set("n", "<leader>tr", pantran.motion_translate, opts)
vim.keymap.set("n", "<leader>trr", function() return pantran.motion_translate() .. "_" end, opts)
vim.keymap.set("x", "<leader>tr", pantran.motion_translate, opts)
