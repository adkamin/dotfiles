filetype plugin indent on      " Enable changing of tabs.
set tabstop=3 shiftwidth=3     " Set the tabsize to 3.

filetype plugin on             " Enable recognisition of filetypes.
syntax on                      " Enable syntax highlighting.

set mouse=a                    " Enable the mouse in vim.
set viminfo=""                 " Disable viminfo files.

call plug#begin('~/.vim/plugged')
	Plug 'adkamin/gruvbox'      " Gruvbox color theme.
call plug#end()

colorscheme gruvbox
