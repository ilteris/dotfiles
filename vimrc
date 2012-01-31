set nocp
call pathogen#infect()
syntax on
filetype plugin indent on
call pathogen#infect()
let mapleader="," "mapping for command+t
set laststatus=2
set t_Co=256
set background=dark
call pathogen#helptags()
"ruby and rails 
"set path+=/path/to/your/rails-application/app/**
set path+=/path/to/your/rails-application/lib/**
set suffixesadd=.rb
set includeexpr+=substitute(v:fname,'s$','','g')
" or you can add substitution pattern s/ies$/y/g, s/ves$/f/g like this:
" set includeexpr+=substitute(substitute(substitute(v:fname,'s$','','g'),'ie$','y','g'),'ve$','f','g')
"
"
"https://weblion.psu.edu/trac/weblion/wiki/MacVim
filetype on
"ragtags mappings
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1
"disable the arrow keys for now
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>


"If the exuberant ctags utility is not present in your PATH, then set the 
"Tlist_Ctags_Cmd variable to point to the location of the exuberant ctags 
"utility (not to the directory) in the .vimrc file. 
 "http://www.vim.org/scripts/script.php?script_id=273
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
filetype plugin indent on
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=80
setlocal smarttab
setlocal expandtab
helptags ~/.vim/doc



"default
set shell=/bin/sh "this is rvm hack https://rvm.beginrescueend.com/integration/vim/
colorscheme zenburn
let g:zenburn_force_dark_Background=1
"set guifont=Inconsolata:h16
set number

"Higlight current line only in insert mode
autocmd InsertLeave * set nocursorline
autocmd InsertEnter * set cursorline

"Highlight cursor
highlight CursorLine ctermbg=8 cterm=NONE
"Incremental search
set incsearch
