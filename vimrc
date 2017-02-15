"""""""""""""""""""""
" VUNDLE SETTINGS """
"""""""""""""""""""""

" The lines below are required for Vundle
set nocompatible                    " Be improved.
filetype off                        " Not sure.
set rtp+=~/.vim/bundle/Vundle.vim   " Include Vundle in the runtime path.

""""""""""""""""""""""""""
""" START VUNDLE BLOCK """
""""""""""""""""""""""""""

call vundle#begin()                 " or call vundle#begin('~/some/path/')
Plugin 'VundleVim/Vundle.vim'       " Vundle must manage Vundle

""" General Plugins """

Plugin 'scrooloose/syntastic'
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_python_checkers = ['flake8']
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": ["javascript"],
    \ "passive_filetypes": ["python", "java"] }

" Plugin 'chrisbra/csv.vim'

" Plugin 'tpope/vim-fugitive'

Plugin 'senderle/restoreview'

""" Colorschemes """

Plugin 'flazz/vim-colorschemes'

""" Python Plugins """

Plugin 'klen/python-mode'
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_cwindow = 0
let g:pymode_lint_ignore = "E302, E501"
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1

" Plugin 'davidhalter/jedi-vim'

""" JavaScript Plugins """

" Basically, this bogs down vim horrendously. Like for example, when I
" tried to reformat some json, it took like 10x longer with this on. 

" Plugin 'pangloss/vim-javascript'

""" Lisp Plugins """

Plugin 'kovisoft/slimv'

" All Plugins must be added before the following line
call vundle#end()           " Required for Vundle
filetype plugin indent on   " Required for Vundle. Use `filetype plugin on`
                            " to ignore plugin indent changes.

""""""""""""""""""""""""
""" END VUNDLE BLOCK """
""""""""""""""""""""""""

          " Brief Vundle help:
          " ------------------
          
          " :PluginList       - lists configured plugins
          " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
          " :PluginSearch foo - searches for foo; append `!` to refresh local cache
          " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
          "
          " see :h vundle for more details or wiki for FAQ
          
          " Example Plugin lines:
          " ---------------------
          
          " For a Plugin on GitHub repo:
          "       Plugin 'tpope/vim-fugitive'
          " For a Plugin from http://vim-scripts.org/vim/scripts.html
          "       Plugin 'L9'
          " For a Git Plugin not hosted on GitHub
          "       Plugin 'git://git.wincent.com/command-t.git'
          " For a git repo on your local machine
          "       Plugin 'file:///home/gmarik/path/to/plugin'
          " For a vim script in the `vim` subdirectory of a repo,
          " pass the path to set the runtimepath properly:
          "       Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
          " To avoid name conflicts (e.g. with `L9` above):
          "       Plugin 'user/L9', {'name': 'newL9'}

"""""""""""""""""""""""""""
""" OUT-OF-BOX SETTINGS """
"""""""""""""""""""""""""""

set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup


"""""""""""""""""""
""" MY SETTINGS """
"""""""""""""""""""

""" Color Schemes """

set t_Co=256            " no more ugly colorschemes
syntax on               " syntax on
set background=dark     " use syntax colors suited to a dark background
colorscheme seti

""" Folders """

set backupdir=$HOME/.vim/backup//
set directory=$HOME/.vim/swap//

""" Code Folding """

" set foldmethod=syntax

""" Indentation """

set softtabstop=4       " expand tabs to 4 spaces
set shiftwidth=4        " indent code by 4 spaces
set tabstop=4           " tabwidth ALWAYS 8 spaces
set expandtab           " use spaces instead of tabs
set autoindent

""" Line and Column Numbers """

set ruler               " show line number and column
set nowrap              " don't wrap lines
set colorcolumn=80      " display a line at column 80

""" Autocommand block """

if has("autocmd")
    au FileType make setlocal tabstop=8 " turn off tab expansion for makefiles
    au Filetype make setlocal softtabstop=8
    au Filetype make setlocal shiftwidth=8
    au FileType make setlocal noexpandtab

    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    au BufNewFile,BufRead *.pt set filetype=xhtml
endif

