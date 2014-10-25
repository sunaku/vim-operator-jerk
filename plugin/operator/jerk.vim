" The vim operator plugin to shift a text block in white spaces.
" Last Change: 06-Oct-2014.
" Maintainer : Masaaki Nakamura <mckn@outlook.jp>

" License    : NYSL
"              Japanese <http://www.kmonos.net/nysl/>
"              English (Unofficial) <http://www.kmonos.net/nysl/index.en.html>

if exists("g:loaded_operator_jerk")
  finish
endif
let g:loaded_operator_jerk = 1

nnoremap <silent> <Plug>(operator-jerk-forward)  <Esc>:call operator#jerk#precedent('forward')<CR>g@
xnoremap <silent> <Plug>(operator-jerk-forward)  <Esc>:call operator#jerk#precedent('forward')<CR>gvg@
nnoremap <silent> <Plug>(operator-jerk-backward) <Esc>:call operator#jerk#precedent('backward')<CR>g@
xnoremap <silent> <Plug>(operator-jerk-backward) <Esc>:call operator#jerk#precedent('backward')<CR>gvg@

nnoremap <silent> <Plug>(operator-jerk-forward-partial)  <Esc>:call operator#jerk#precedent('forward_partial')<CR>g@
xnoremap <silent> <Plug>(operator-jerk-forward-partial)  <Esc>:call operator#jerk#precedent('forward_partial')<CR>gvg@
nnoremap <silent> <Plug>(operator-jerk-backward-partial) <Esc>:call operator#jerk#precedent('backward_partial')<CR>g@
xnoremap <silent> <Plug>(operator-jerk-backward-partial) <Esc>:call operator#jerk#precedent('backward_partial')<CR>gvg@

""" default keymappings
" If g:textobj_delimited_no_default_key_mappings has been defined, then quit immediately.
if exists('g:operator_jerk_no_default_key_mappings') | finish | endif

" forward
if !hasmapto('<Plug>(operator-jerk-forward)')
  silent! nmap <unique> g> <Plug>(operator-jerk-forward)
  silent! xmap <unique> g> <Plug>(operator-jerk-forward)
endif


" backward
if !hasmapto('<Plug>(operator-jerk-backward)')
  silent! nmap <unique> g< <Plug>(operator-jerk-backward)
  silent! xmap <unique> g< <Plug>(operator-jerk-backward)
endif
