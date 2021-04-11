" Hot keys settings

inoremap jk <esc>
inoremap kj <esc>
map <\> <leader>

" map adding blank line.
nnoremap <CR> m`o<Esc>``
nnoremap <S-CR> m`O<Esc>``

imap Nop <Plug>IMAP_JumpForward
nmap Nop <Plug>IMAP_JumpForward
vmap Nop <Plug>IMAP_JumpForward

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" resize windows
nnoremap <silent> <M-j> :resize -2<CR>
nnoremap <silent> <M-k> :resize +2<CR>
nnoremap <silent> <M-l> :vertical resize -2<CR>
nnoremap <silent> <M-h> :vertical resize +2<CR>

" moving lines
xnoremap <silent> K :move '<-2<CR>gv-gv
xnoremap <silent> J :move '<+1<CR>gv-gv

" tab navigations
nnoremap <silent> <C-TAB> :tabnext<CR>
nnoremap <silent> <S-TAB> :tabprev<CR>
nnoremap <silent> <C-T> :tabnew<CR>

" copy and paste to/from clipboard
noremap <leader>y "+y
noremap <leader>p "+p
inoremap <leader>p <esc>"+pa

" auto correcting in a line
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" fast replacements
nnoremap <silent> s* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
xnoremap <silent> s* "sy:let @/=@s<CR>cgn

" auto commenting setting
nnoremap <silent> <M-/> :call NERDComment(0,"toggle")<CR>
vnoremap <silent> <M-/> :call NERDComment(0,"toggle")<CR>

" change keymap to Russian
nnoremap <silent> <M-r> :set iminsert=1<CR>
" change keymap to English
nnoremap <silent> <M-e> :set iminsert=0<CR>

" run python code using <C-R>
autocmd FileType python map <buffer> <F9> :w<CR>:sp<CR>:exec 'term python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:sp<CR>:exec 'term python' shellescape(@%, 1)<CR>

" compile C++ file using <F9>. Run using <F10>
autocmd FileType cpp map <buffer> <F9> :w<CR>:make<CR>
autocmd FileType cpp map <buffer> <F10> :sp<CR>:term ./%:r.out<CR>

" run .m file using <F9>
autocmd FileType matlab map <buffer> <F9> :w<CR>:sp<CR>:exec 'term octave' shellescape(@%, 1)<CR>

" compile and open LaTex document
autocmd FileType plaintex map <buffer> <F9> :w<CR>:sp<CR>:exec 'term pdflatex' shellescape(@%, 1)<CR>
autocmd FileType plaintex map <buffer> <F10> :sp<CR>:terminal mupdf %:r.pdf<CR>:q<CR>
autocmd FileType tex map <buffer> <F9> :w<CR>:sp<CR>:exec 'term pdflatex' shellescape(@%, 1)<CR>
autocmd FileType tex map <buffer> <F10> :sp<CR>:terminal mupdf %:r.pdf<CR>:q<CR>

" run bash script
autocmd FileType sh map <buffer> <F9> :sp<CR>:term ./%<CR>

" open nerd tree using <F5>
map <silent> <F5> :NERDTreeToggle<CR>

map :W <Nop>
map <up> <Nop>
map <down> <Nop>
map <left> <Nop>
map <right> <Nop>

" Text block movements via alt
let g:move_key_modifier = 'A'

" Map Ctrl-Backspace to delete the previous word in insert mode.
inoremap <C-Q> <C-\><C-O>dB
