-- 不可见字符的显示，这里只把空格显示为一个点
-- vim.o.list = true
-- vim.o.listchars = "space:·"
-- 补全增强
vim.o.wildmenu = true
-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 右侧参考线，超过表示代码太长了，考虑换行
--vim.wo.colorcolumn = "80"
vim.opt.wrap = false

vim.api.nvim_command(":filetype plugin on")

-- 括号



require'nvim-treesitter.configs'.setup {
  -- 安装 language parser
  -- :TSInstallInfo 命令查看支持的语言
  ensure_installed = {"html", 
    "css",
    "vim",
    "lua",
    "javascript",
    "typescript",
    "python",
    "c",
    "cpp",
    "go",
    "bash",
    "cmake",
    "make",
    "tsx",
    "markdown",
    "help",
  },
  -- 启用代码高亮功能
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  -- 启用增量选择
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    }
  },
  -- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
  indent = {
    enable = true
  }
}
-- 开启 Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99

vim.cmd("map <LEADER>fg gg=G")
vim.cmd("noremap <LEADER>[ zc")
vim.cmd("noremap <LEADER>] zo")

-- 翻译配置
vim.cmd [[
  let g:translator_target_lang = 'zh'
  let g:translator_source_lang = 'auto'
  let g:translator_default_engines = ['youdao','bing']
  nmap <silent> <Leader>t <Plug>Translate
  vmap <silent> <Leader>t <Plug>TranslateV
  nmap <silent> <Leader>w <Plug>TranslateW
  vmap <silent> <Leader>w <Plug>TranslateWV
  nmap <silent> <Leader>r <Plug>TranslateR
  vmap <silent> <Leader>r <Plug>TranslateRV
  nmap <silent> <Leader>x <Plug>TranslateX
  nnoremap <silent><expr> <M-f> translator#window#float#has_scroll() ?
  \ translator#window#float#scroll(1) : "\<M-f>"
  nnoremap <silent><expr> <M-b> translator#window#float#has_scroll() ?
  \ translator#window#float#scroll(0) : "\<M-f>"
]]
