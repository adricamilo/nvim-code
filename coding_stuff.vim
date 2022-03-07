augroup coding_stuff
    autocmd!
    autocmd BufWritePre,BufRead *.java :normal gg=G
    autocmd BufWritePre,BufRead *.py :normal gg=G
    autocmd BufWritePre,BufRead *.cpp :normal gg=G
    autocmd BufWritePre,BufRead *.c :normal gg=G
    autocmd BufWritePre,BufRead *.s :normal gg=G
    autocmd FileType java nnoremap <buffer> <localleader>c I//<space><esc>
    autocmd FileType python nnoremap <buffer> <localleader>c I#<space><esc>
    autocmd FileType markdown nnoremap <buffer> <localleader>q I><space><esc>
    autocmd FileType asm nnoremap <buffer> <localleader>c I;<space><esc>
    autocmd FileType tex inoremap <buffer> \sum \sum_{}^{}<left><left><left><left>
    autocmd FileType tex inoremap <buffer> \frac \frac{}{}<left><left><left>
    autocmd FileType tex inoremap <buffer> \bs \boldsymbol{}<left>
    autocmd FileType tex nnoremap <buffer> <localleader>tf bveyPa<enter>\end{<esc>ea}<esc>k$a}<esc>bi\begin{<esc>2==o
augroup END
