:set number
:set tabstop=4
:set autoindent
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

"-------------------------------
" Install vim-plug
"
" sh -c 'curl -fLo
" "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim
" --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
" 
"
" Add and remove plugins
" :PlugInstall
" :PlugClean
"
" Auto complete needs langauge specific modules
" Google coc <Language you want to install>
"	(Python) :CocInstall coc-pyright
"
" Tag bar needs Ctags
"	sudo apt install exuberant-ctags
"
" fzf needs Silver searcher
"	sudo apt install silversearcher-ag
"-------------------------------

call plug#begin()
" Appearance
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes' " Status bar themes
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " color schemes
Plug 'https://github.com/ryanoasis/vim-devicons' " Dev Icons
" Plug 'https://github.com/glepnir/dashboard-nvim' " needs Lua

" Additional commands
Plug 'http://github.com/tpope/vim-surround' " cs change surrounding
Plug 'https://github.com/tpope/vim-commentary' " gc comment out selection

" Auto Complete
Plug 'https://github.com/neoclide/coc.nvim' " Auto complete

" Extensibility
Plug 'https://github.com/preservim/nerdtree' " File tree
Plug 'https://github.com/preservim/tagbar' " Class outline viewer
Plug 'https://github.com/ap/vim-css-color' " CSS color preview
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " :Ag to activate fuzzy finder

call plug#end()

" Colorscheme
:colorscheme gruvbox

" Airline 
let g:airline_theme='gruvbox'

" NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Tagbar 
nmap <F8> :TagbarToggle<CR>

" Autocomplete 
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" dashboard 
" let g:dashboard_default_executive ='fzf'
