nnoremap <C-Down> ddp
nnoremap <C-Up> ddkP
nnoremap <C-Left> :bp<CR> 
nnoremap <C-Right> :bn<CR>

inoremap jk <esc>

augroup java_code
    autocmd!
    autocmd BufWritePre,BufRead *.java :normal gg=G
    autocmd FileType java nnoremap <buffer> <leader>c I//<space><esc>
augroup END
augroup c_code
    autocmd!
    autocmd BufWritePre,BufRead *.cpp :normal gg=G
    autocmd BufWritePre,BufRead *.c :normal gg=G
augroup END
augroup python_code
    autocmd!
    autocmd BufWritePre,BufRead *.py :normal gg=G
    autocmd FileType python nnoremap <buffer> <leader>c I#<space><esc>
augroup END
augroup markdown_code
    autocmd!
    autocmd FileType markdown nnoremap <buffer> <leader>q I><space><esc>
    autocmd FileType markdown nmap <silent> <leader>m :call CompileWithMarked() <CR><CR>
" must be edited according to the specific screen size
    autocmd FileType markdown setlocal textwidth=65
augroup END
augroup tex_code
    autocmd!
    autocmd FileType tex inoremap <buffer> \sum \sum_{}^{}<left><left><left><left>
    autocmd FileType tex inoremap <buffer> \frac \frac{}{}<left><left><left>
    autocmd FileType tex inoremap <buffer> \nice \nicefrac{}{}<left><left><left>
    autocmd FileType tex inoremap <buffer> \bs \boldsymbol{}<left>
    autocmd FileType tex inoremap <buffer> \lstin \lstinline[columns=fixed]
    autocmd FileType tex nnoremap <buffer> <leader>tf bveyPa<enter>\end{<esc>ea}<esc>k$a}<esc>bi\begin{<esc>2==o
    autocmd FileType tex nnoremap <buffer> <leader>ts bveyPa*<enter>\end{<esc>ea*}<esc>k$a}<esc>bbi\begin{<esc>2==o
    autocmd FileType tex nnoremap <buffer> <leader>c I%<space><esc>
    " must be edited according to the specific screen size
    autocmd FileType tex setlocal textwidth=65
augroup END
