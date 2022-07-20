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
"-------------------------------

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " cs change surrounding
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " File tree
Plug 'https://github.com/tpope/vim-commentary' " gc comment out selection
Plug 'https://github.com/ap/vim-css-color' " CSS color preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " color schemes
Plug 'https://github.com/ryanoasis/vim-devicons' " Dev Icons
Plug 'https://github.com/neoclide/coc.nvim' " Auto complete

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

:colorscheme gruvbox

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
