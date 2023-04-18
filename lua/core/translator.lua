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
 vmap <silent> fy <Plug>TranslateWV
 " nmap <silent> <Leader>r <Plug>TranslateR
 " vmap <silent> <Leader>r <Plug>TranslateRV
 " nmap <silent> <Leader>x <Plug>TranslateX
  nnoremap <silent><expr> <M-f> translator#window#float#has_scroll() ?
  \ translator#window#float#scroll(1) : "\<M-f>"
  nnoremap <silent><expr> <M-b> translator#window#float#has_scroll() ?
  \ translator#window#float#scroll(0) : "\<M-f>"
]]

