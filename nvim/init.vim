"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/
"_________________________________________

" General settings
source $HOME/.config/nvim/general/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/hot-keys.vim
source $HOME/.config/nvim/general/statusline.vim

" Plugin configuration
source $HOME/.config/nvim/plug-config/python.vim
source $HOME/.config/nvim/plug-config/c++.vim
source $HOME/.config/nvim/plug-config/latex.vim

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/git.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/ranger.vim
source $HOME/.config/nvim/plug-config/quick-scope.vim
source $HOME/.config/nvim/plug-config/snippets.vim
source $HOME/.config/nvim/plug-config/emmet.vim

source $HOME/.config/nvim/plug-config/rainbow.vim
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
