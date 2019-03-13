execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme monokai

let g:airline_theme='base16_monokai'

map <C-n> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
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
