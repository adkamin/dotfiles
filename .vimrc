filetype plugin indent on               " Enable changing of tabs
filetype plugin on                      " Enable recognisition of filetypes
syntax on                               " Enable syntax highlighting

set tabstop=4 shiftwidth=4              " Set the tabsize to 4
set wrap linebreak                      " Wrap at the end of word
set mouse=a                             " Enable the mouse in vim
set viminfo=""                          " Disable viminfo files 
set relativenumber                      " Set relative line numbers
set hlsearch                            " Highlight search results
set incsearch                           " Enable incremental search
set laststatus=2                        " Show filename on the statusbar
set pastetoggle=<F2>                    " Pastetoggle for indent or noindent

call plug#begin('~/.vim/plugged')
	Plug 'adkamin/gruvbox'               " Gruvbox color scheme
call plug#end()

colorscheme gruvbox
au ColorScheme * hi Normal ctermbg=None
au ColorScheme * hi NonText ctermbg=None
"au ColorScheme * hi Todo ctermbg=None
