-- examples for your init.lua
require('onedark').setup {
  style = 'cool'
}
require('onedark').load()

-- 参考线设置
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]]
vim.opt.list = true
vim.opt.listchars:append "eol:↴"
require("indent_blankline").setup {
  show_current_context = true,
  char = "",
  show_current_context_start = true,
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
  },
  space_char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
  },
  show_trailing_blankline_indent = false,
}

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup{
  -- 关闭文件时自动关闭
  auto_close = true,
  -- 不显示 git 状态图标
  git = {
    enable = false
  },
}
--  bind  key
vim.cmd('map tt :NvimTreeToggle<CR>')
-- tap
vim.opt.termguicolors = true
require("bufferline").setup {
  options = {
    -- 使用 nvim 内置lsp
    diagnostics = "nvim_lsp",
    -- 左侧让出 nvim-tree 的位置
    offsets = {{
      filetype = "NvimTree",
      text = "File Explorer",
      highlight = "Directory",
      text_align = "left"
    }}
  }
}

vim.cmd [[
  map th :BufferLineCyclePrev<CR>
  map tl :BufferLineCycleNext<CR> 
]]
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

-- 翻译配置A
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
