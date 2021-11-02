"set leader key
let mapleader=","

" set line number
set number
set relativenumber

" tab and indent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent

" split
set splitright
set splitbelow

" key map for switching splits
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" terminal config
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <C-n> :call OpenTerminal()<CR>
tnoremap <Esc> <C-\><C-n>

" keymap for opening nvim config file
nnoremap <leader>ie :vsp $MYVIMRC<CR>

" source automatically on save
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

" plugins
source $HOME/.config/nvim/plugins.vim

" plugins config
source $HOME/.config/nvim/plug-config/nvim-tree.vim
