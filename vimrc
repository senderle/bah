"""""""""""""""""""""
" VUNDLE SETTINGS """
"""""""""""""""""""""

" The lines below are required for Vundle

set nocompatible                    " Be improved.
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
filetype indent plugin on
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
    " turn off tab expansion for makefiles
    au FileType make setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
    au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    au FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
    au FileType c,cpp,java,php,python,javascript autocmd BufWritePre <buffer> %s/\s\+$//e

    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    au BufNewFile,BufRead *.pt set filetype=xhtml
endif
