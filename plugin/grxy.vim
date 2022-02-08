" vim-grxy - Replace the next character x with y
" Maintainer:   Jer Wilson <superjer@superjer.com>
" URL:          https://github.com/superjer/vim-grxy
" Version:      0.1
"
" License:
" Copyright Jer Wilson. Distributed under the same terms as Vim itself.
" See :help license
"
" Installation:
" Put this file in your ~/.vim/plugin dir or, if you use a bundler, clone
" https://github.com/superjer/vim-grxy to your bundles dir.
"
" Description:
" Requires the amazing repeat.vim for full functionality:
"       https://github.com/tpope/vim-repeat

if exists("g:loaded_grxy")
  finish
endif
let g:loaded_grxy = 1

" grxy to replace next x with y, like fxry but REPEATABLY with . thanks to repeat.vim
" Go Replace X with Y
" Stomps nearly useless gr builtin
function! ReplaceNext()
  let ch1 = nr2char(getchar())
  let ch2 = nr2char(getchar())
  exec "normal! f" . ch1 . "r" . ch2
  silent! call repeat#set("gr" . ch1 . ch2)
endfu
nnoremap gr :cal ReplaceNext()<CR>
