if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
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
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'yegappan/grep'
Plug 'evanleck/vim-svelte'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'w0rp/ale'
Plug 'vim-test/vim-test'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'vimwiki/vimwiki'
Plug 'vim-test/vim-test'
Plug 'github/copilot.vim', {'branch': 'release'}
Plug 'mhinz/vim-grepper'
call plug#end()

map <C-n> :NERDTreeTabsToggle<CR> 
let g:nerdtree_tabs_autofind=1

syntax on
filetype plugin indent on

let g:airline_solarized_bg='light'
colorscheme solarized


set number
map <c-k> :set number!<CR>

set shiftwidth=2
set softtabstop=2
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
set mouse=a

autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

vmap <c-c> "+y

nmap <c-t> :TagbarToggle<CR>
nmap <c-g> :Grepper<CR>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd QuickFixCmdPost *grep* cwindow

highlight clear SignColumn

let g:rg_derive_root = 1
nnoremap <C-p> :GFiles<Cr>

let g:ale_fixers = {
 \ 'javascript': ['prettier',  'eslint']
 \ }
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_linter_aliases = {'svelte': ['css', 'javascript']}
let g:ale_linters = {'svelte': ['stylelint', 'eslint'], 'javascript': ['standard']}
let g:ale_fixers = {'svelte': ['eslint', 'prettier', 'prettier_standard'], 'javascript': ['standard']}

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let g:svelte_indent_script = 0
let g:svelte_indent_style = 0
