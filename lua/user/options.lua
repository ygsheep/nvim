local opt = vim.opt
-- 行号
opt.number = true
opt.relativenumber = true -- 相对行号

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true

-- 补全增强
vim.o.wildmenu = true
-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- 防止包囊
opt.wrap = false

-- 设置命令行的高度
opt.cmdheight = 2

-- 高亮显示搜索结果
opt.hlsearch = true
-- 开启实时搜索功能
opt.incsearch = true
-- 搜索时大小写不敏感
opt.ignorecase = true
-- 智能大小写
opt.smartcase = true

-- 高亮行号
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")


-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

vim.cmd[[ au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]]
-- neovideo 配置
vim.cmd [[
if exists("g:neovide")
	" set guifont=FiraCode\Medium:18
	set guifont=JetBrains\Mono\Medium:20
	let g:neovide_profiler = v:true
	endif
	]]

	-- fcitx5 config
	-- 1、退出插入模式时禁用输入法，并保存状态
	-- 2、表示之前状态打开了输入法，则进入插入模式时启动输入法
	vim.cmd[[
	let fcitx5state=system("fcitx5-remote")
	autocmd InsertLeave * :silent let fcitx5state=system("fcitx5-remote")[0] | silent !fcitx5-remote -c
	autocmd InsertEnter * :silent if fcitx5state == 2 | call system("fcitx5-remote -o") | endif
	" au BufWrite * :Autoformat
	]]

