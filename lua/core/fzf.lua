vim.cmd[[
let g:fzf_preview_window = ['right,40%,<50(down,50%)', 'ctrl-/']
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }

com! -bar -bang Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter=: --nth=4..'}), <bang>0)
com! CHistory call CHistory()

func! CHistory()
  call filter(v:oldfiles, "v:val =~ '^' . $PWD . '.*$'")
  call fzf#vim#history(fzf#vim#with_preview(), 0)
endf

nnoremap <leader>rg :Rg<cr>        " Ag 全局文本搜索
nnoremap <leader>rf :Files<cr>     " 目录下文件搜索
nnoremap <leader>rl :BLines<cr>    " 文件内文本搜索
nnoremap <leader>rg :GFiles?<cr>   " git变更文件搜索
" nnoremap <c-h> :CHistory<cr>  " 目录下最近文件搜索
]]
