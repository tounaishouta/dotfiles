setlocal expandtab
setlocal shiftwidth=4

setlocal makeprg=ghc\ -O2\ -Wall
nnoremap <buffer><silent> ,b :make %<CR>
nnoremap <buffer><silent> ,r :! ./%:r<CR>
nnoremap <buffer><silent> ,i :! ghci %<CR>
nnoremap <buffer><silent> ,, :! runghc %<CR>

nnoremap <buffer><silent> ,t :GhcModType<CR>
nnoremap <buffer><silent> ,T :GhcModTypeClear<CR>

augroup Haskell
  autocmd!
  autocmd BufWritePost *.hs GhcModCheckAndLintAsync
augroup END
