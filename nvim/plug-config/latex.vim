" LaTeX settings
let g:vimtex_fold_enabled=1
let g:tex_flavor='latex'
let g:vimtex_view_method='mupdf'

" compile and open LaTex document
"
autocmd FileType plaintex map <buffer> <F9> :w<CR>:sp<CR>:exec 'term pdflatex' shellescape(@%, 1)<CR>
autocmd FileType plaintex map <buffer> <F10> :sp<CR>:terminal mupdf %:r.pdf<CR>:q<CR>
autocmd FileType tex map <buffer> <F9> :w<CR>:sp<CR>:exec 'term pdflatex' shellescape(@%, 1)<CR>
autocmd FileType tex map <buffer> <F10> :sp<CR>:terminal mupdf %:r.pdf<CR>:q<CR>
