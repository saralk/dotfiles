if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'ktvoelker/sbt-vim'
Plug 'vim-syntastic/syntastic'
Plug 'mkitt/tabline.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-rhubarb'
Plug 'vim-ruby/vim-ruby'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

syntax on
filetype plugin indent on

set background=light
colorscheme solarized

let g:airline_solarized_bg='light'

map <C-n> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 0
let g:syntastic_javascript_checkers = ['eslint']

set number
map <c-k> :set number!<CR>

set shiftwidth=4
set softtabstop=4
set expandtab

set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set ruler
set laststatus=2
set confirm
set cmdheight=2

autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

nmap <c-t> :TagbarToggle<CR>

autocmd QuickFixCmdPost *grep* cwindow

nnoremap <C-p> :Files<Cr>
