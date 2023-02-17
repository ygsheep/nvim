-- vim_current_word

vim.cmd [[
	" Twins of word under cursor:
	let g:vim_current_word#highlight_twins = 1
	" The word under cursor:
	let g:vim_current_word#highlight_current_word = 1
	" 延迟突出显示
	let g:vim_current_word#highlight_delay = 0
	" 仅在焦点窗口中启用/禁用突出显示
	let g:vim_current_word#highlight_only_in_focused_window = 1
	hi CurrentWord guibg=#d24735 gui=underline,italic
]]

