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
"nvie vim commands
set history=1000         " remember more commands and search history
set hidden
set nobackup
set noswapfile
"Vim can highlight whitespaces for you in a convenient way
"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
"In some files, like HTML and XML files, tabs are fine and showing them is really annoying, you can disable them easily using an autocmd declaration:
autocmd filetype html,xml set listchars-=tab:>.


set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set pastetoggle=<F2>
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type


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
"set guifont=Inconsolata:h16
let g:zenburn_high_Contrast=1
colorscheme zenburn

"Higlight current line only in insert mode
"autocmd InsertLeave * set nocursorline
"#autocmd InsertEnter * set cursorline
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

"Highlight cursor
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"highlight CursorLine ctermbg=8 cterm=NONE
"Incremental search
set incsearch
"my vim mappings
nmap <F3> :vsp<bar>bp<cr>
nmap <F4> :vsp<bar>bn<cr>
