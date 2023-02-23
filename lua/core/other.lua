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
	hi CurrentWord guibg=#333333 gui=underline,italic
	" #61afef
]]

vim.cmd [[
	" 使光标在jk移动时速度随时间的增加而增加
	nmap j <Plug>(accelerated_jk_gj)
	nmap k <Plug>(accelerated_jk_gk)
	let g:accelerated_jk_acceleration_table = [2, 4, 7, 15]
]]

vim.cmd [[
	" This selects the next closest text object.
	map vv <Plug>(wildfire-fuel)

	" use '*' to mean 'all other filetypes'
" in this example, html and xml share the same text objects
	let g:wildfire_objects = {
    \ "*" : ["i'", 'i"', "i)", "i]", "i}"]
\ }
]]

