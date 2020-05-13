filetype plugin indent on               " Enable changing of tabs
filetype plugin on                      " Enable recognisition of filetypes
syntax on                               " Enable syntax highlighting

set tabstop=3 shiftwidth=3              " Set the tabsize to 3
set wrap linebreak                      " Wrap at the end of word
set mouse=a                             " Enable the mouse in vim
set viminfo=""                          " Disable viminfo files 
set relativenumber                      " Set relative line numbers
set hlsearch                            " Highlight search results
set incsearch                           " Enable incremental search

call plug#begin('~/.vim/plugged')
	Plug 'adkamin/gruvbox'               " Gruvbox color scheme
call plug#end()

colorscheme gruvbox
au ColorScheme * hi Normal ctermbg=None
au ColorScheme * hi NonText ctermbg=None
au ColorScheme * hi Todo ctermbg=None
