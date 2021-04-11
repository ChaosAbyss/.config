" Statusline settings.
set laststatus=2
set statusline =%.20F
set statusline +=\ %15{fugitive#statusline()}
set statusline +=%=
set statusline +=%-8.(%l,%c%V%)
set statusline +=\ %-4L
set statusline +=\ %-4P
if g:colors_name == "github"
    hi StatusLine guibg=white guifg=black
endif

