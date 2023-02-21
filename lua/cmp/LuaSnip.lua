
require'luasnip'.filetype_extend("ruby", {"rails"}) -- 代码片段


-- 设置快捷键
vim.cmd [[
	" press <Tab> to expand or jump in a snippet. These can also be mapped separatel	y
	" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
	imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-o	r-jump' : '<Tab>' 
	" -1 for jumping backwards.
	inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

	snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
	snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

	" For changing choices in choiceNodes (not strictly necessary for a basic setup)	.
	imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice'		: '<C-E>'
	smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice'		: '<C-E>'
]]
