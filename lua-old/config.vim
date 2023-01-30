
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "      " 定义<leader>键
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
" filetype plugin on       " 设置加载对应文件类型的插件
" set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set cursorline           " 高亮显示当前行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " 代码缩进和排版
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=2            " 设置编辑时制表符占用空格数
set shiftwidth=2         " 设置格式化时制表符占用空格数
set softtabstop=2        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set smartcase            " 智能大小写

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " 搜索设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set nobackup            " 设置不备份
" set noswapfile          " 禁止生成临时文件
" set autoread            " 文件在vim之外修改过，自动重新读入
" set autowrite           " 设置自动保存
" set confirm             " 在处理未保存或只读文件的时候，弹出确认
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
" set listchars=extends:❯,precedes:❮,tab:▸\ ,trail:
set listchars=tab:\|\
set scrolloff=2
" set guifont=Firacode NF\18
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" neovideo 配置
if exists("g:neovide")
  " Put anything you want to happen only in Neovide here
  " set guifont=JetBrains\Mono:h18
  set guifont=FiraCode\Medium:18
  let g:neovide_profiler = v:true
  " let g:neovide_input_use_logotruecmd+vinit.vimfalsectrl+v

endif

" fcitx5 config
let fcitx5state=system("fcitx5-remote")
" 退出插入模式时禁用输入法，并保存状态
autocmd InsertLeave * :silent let fcitx5state=system("fcitx5-remote")[0] | silent !fcitx5-remote -c
" 2 表示之前状态打开了输入法，则进入插入模式时启动输入法
autocmd InsertEnter * :silent if fcitx5state == 2 | call system("fcitx5-remote -o") | endif

