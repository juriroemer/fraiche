call plug#begin()
Plug 'preservim/NERDTree'
" Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
call plug#end()


let mapleader=","

set nu
set noerrorbells
syntax on
colorscheme gruvbox
set background=dark
set tabstop=4 softtabstop=4
set shiftwidth=4
set noswapfile
set incsearch
set expandtab
set autoindent
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * NERDTree | wincmd p

" set cursorline
" set cursorcolumn

fu! ToggleCurline ()
  if &cursorline && &cursorcolumn
    set nocursorline
    set nocursorcolumn
  else
    set cursorline
    set cursorcolumn
  endif
endfunction

map <silent><leader>cl :call ToggleCurline()<CR>
