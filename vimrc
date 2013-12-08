" Requires for 256 colors in OS X iTerm(2)
set t_Co=256
set nocp
call pathogen#infect()
syntax on
filetype plugin indent on
let mapleader="," "mapping for command+t
set laststatus=2
call pathogen#helptags()
"map ctrlP to c-\
nnoremap <c-\> :CtrlP<CR> 
nnoremap <leader>w <C-w>v<C-w>l ",w opens a vertical split and makes it active"
nnoremap <leader>h <C-w>s<C-w>l ",h opens a horizontal split and makes it active"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j

nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC " load vimrc easily"
map <C-n> :NERDTreeToggle "togglenerdtree"
set background=dark
colorscheme solarized

set clipboard+=unnamed
"keybindings for tslime
vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

"ragtags mappings
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1
set history=1000         " remember more commands and search history
set hidden
set nobackup
set noswapfile
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
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=80
setlocal smarttab
setlocal expandtab
helptags ~/.vim/doc
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
autocmd InsertLeave * set nocursorline
autocmd InsertEnter * set cursorline   
"highlight CursorLine ctermbg=8 cterm=NONE
"Incremental search
set incsearch


"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"


