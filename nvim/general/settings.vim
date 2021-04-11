" Chris settings

set autochdir                           " cwd the same as current file directory
syntax enable                           " Enables syntax highlighting
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set whichwrap+=<,>,[,],h,l              " Move to the previous/next line not reaching first/last character in the line
set encoding=utf-8                      " The encoding displayed
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " Text with 'conceal' syntax is shown normally
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set textwidth=80                        " Change the number of simbols in each line
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set autoindent                          " Good auto indent
set shortmess+=c                        " Don't pass messages to ins-completion-menu
set updatetime=300                      " Faster completion
set laststatus=2                        " Always display the status line
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set noshowmode                          " No -- INSERT -- anymore

" disable beep and flash
set visualbell t_vd=
set belloff=all

" fast scrolling
set scrolljump=1

" split settings
set splitbelow      " Horizontal splits will automatically be below
set splitright      " Vertical splits will automatically be to the right

" scheme and airline settings
colorscheme solarized8_high
set background=light
set termguicolors

" text highlighting settings
set incsearch       " Use / command to search for matching
set nohls           " Highlights returns for the next search instead of current search

" spelling settings
setlocal spell spelllang=en_us,ru_ru

" keymap settings
set keymap=russian-jcukenwin
set iminsert=0      " English language for insert on startup
set imsearch=0      " English language for search on startup

" panels settings
set guioptions-=L   " left scrollbar
set guioptions-=r   " right scrollbar
set guioptions-=m   " menu
set guioptions-=T   " toolbar

" signcolumn highlighting
set signcolumn=yes
au VimEnter * :hi CursorLineNr guibg=237
au VimEnter * :hi SignColumn guibg=237
au VimEnter * :hi SignifySignDelete guibg=237 guifg=#ed0e0e
au VimEnter * :hi SignifySignDeleteFirstLine guibg=237 guifg=#cc241d
au VimEnter * :hi SignifySignChange guibg=237 guifg=#fabd2f
au VimEnter * :hi SignifySignAdd guibg=237 guifg=#b8bb26
au VimEnter * :hi Normal ctermbg=none

" colorizer
source $HOME/.config/nvim/plug-config/coc.vim
luafile $HOME/.config/nvim/lua/plug-colorizer.lua

" left column settings
set number
set ruler
set relativenumber  " Line numbers relative to the line with the cursor
set cursorline      " Cursor line position tracking

" vim-run settings
let g:run_cmd_python = ['python']

" close vim if NERDTree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" delete all trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" auto-complete for HTML files
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" saves folding in a file
autocmd BufWinLeave *.* silent! mkview
autocmd BufWinEnter *.* silent! loadview
