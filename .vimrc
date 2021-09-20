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

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
	Plug 'morhetz/gruvbox'               " Gruvbox color scheme
call plug#end()

colorscheme gruvbox
au ColorScheme * hi Normal ctermbg=None
au ColorScheme * hi NonText ctermbg=None
"au ColorScheme * hi Todo ctermbg=None
