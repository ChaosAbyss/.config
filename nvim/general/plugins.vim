" Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
    " File navigation
        Plug 'preservim/nerdtree'
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'matze/vim-move'
    " Git integration
        Plug 'mhinz/vim-signify'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-rhubarb'
        Plug 'junegunn/gv.vim'
    " Themes
        Plug 'morhetz/gruvbox'
        Plug 'joshdick/onedark.vim'
        Plug 'norcalli/nvim-colorizer.lua'
        Plug 'ryanoasis/vim-devicons'
        Plug 'lifepillar/vim-solarized8'
    " Mark Down
        Plug 'godlygeek/tabular'
        Plug 'plasticboy/vim-markdown'
    " Latex
        Plug 'lervag/vimtex'
        Plug 'vim-latex/vim-latex'
    " Snippets
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'
    " Other
        Plug 'preservim/nerdcommenter'                   " auto commenting
        Plug 'mattn/emmet-vim'                           " emmet plugin for html
        Plug 'jiangmiao/auto-pairs'                      " auto pairs for '('
        Plug 'neoclide/coc.nvim', {'branch': 'release'}  " auto completing
        Plug 'tmhedberg/SimpylFold'                      " folding
        Plug 'unblevable/quick-scope'                    " fast navigation in a line
        Plug 'easymotion/vim-easymotion'                 " navigation within a file

call plug#end()            " required
filetype plugin indent on  " required

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
