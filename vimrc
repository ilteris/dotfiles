set nocp
call pathogen#infect()
call pathogen#helptags()
source /usr/share/vim/google/google.vim
filetype plugin indent on
syntax on
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=100         " How many undos
set undoreload=1000        " number of lines to save for undo

" Explicitly set the Leader to comma. You you can use '\' (the default),
" or anything else (some people like ';').
let mapleader=','

" Load the code formatting plugin. We first load the open-source version. Then,
" we load the internal google settings. Then, we automatically enable formatting
" when we write the file for Go, BUILD, proto, and c/cpp files.
" Use :h codefmt-google or :h codefmt for more details.
Glug codefmt
Glug codefmt-google
Glug relatedfiles

" Wrap autocmds inside an augroup to protect against reloading this script.
" For more details, see:
" http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
augroup autoformat
  autocmd!
  " Autoformat BUILD files on write.
  autocmd FileType bzl AutoFormatBuffer buildifier
  " Autoformat go files on write.
  autocmd FileType go AutoFormatBuffer gofmt
  " Autoformat proto files on write.
  autocmd FileType proto AutoFormatBuffer clang-format
  " Autoformat c and c++ files on write.
  autocmd FileType c,cc,cpp AutoFormatBuffer clang-format
augroup END

" Requires for 256 colors in OS X iTerm(2)
let base16colorspace=256
" Access colors present in 256 colorspace
set t_Co=256
"map ctrlP to c-\
nnoremap <c-\> :CtrlP<CR> 
nnoremap <leader>w <C-w>v<C-w>l ",w opens a vertical split and makes it active"
nnoremap <leader>h <C-w>s<C-w>l ",h opens a horizontal split and makes it active"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
noremap % v% "highlights between two brackets
"vimrc shortcut
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC " load vimrc easily"
"nerdtree
silent! map <C-n> :NERDTreeToggle<CR> 
"togglenerdtree
autocmd vimenter * NERDTree
"close vim if the only window left open is a NERDTree

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

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
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
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
helptags ~/.vim/doc
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
autocmd InsertLeave * set nocursorline
autocmd InsertEnter * set cursorline   
"highlight CursorLine ctermbg=8 cterm=NONE
"Incremental search
set incsearch


" ultisnips.
let g:UltiSnipsUsePythonVersion = 2
"let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<leader><tab>"

"let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Ultisnips settings
" let g:UltiSnipsExpandTrigger = "<C-j>"
 let g:UltiSnipsSnippetsDir = "~/.vim/bundle/ultisnips/UltiSnips"


"NeoComplete config
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3


" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"make html tab 2
autocmd FileType html setlocal shiftwidth=2 tabstop=2


"move lines up and down easily with this map
"normal  mode

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"make vim indent tags below
let g:html_indent_inctags = "html,body,head,tbody"
set wrap
let g:sparkupNextMapping = '<c-x>'
"session.vim autosaves the session on quit
let g:session_autosave = 'yes'
set cpoptions+=$ 
"add a $ sign at the end of the c
set virtualedit=all
"set virtual edit to move freely in the buffer
:hi Directory guifg=#FF0000 ctermfg=red "nerdtree directory color red

"let g:airline_theme='luna'
set tabstop=2 shiftwidth=2 expandtab
set tags=./tags,tags;$HOME
highlight LineNr ctermfg=grey
