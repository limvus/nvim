"set leader key
let mapleader=","

" set line number
set number
set relativenumber

" tab and indent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
"set smartindent

" copy to clipboard"
set clipboard+=unnamedplus

" set cursorline"
set cursorline

" split
set splitright
set splitbelow

" Better indenting
vnoremap < <gv
vnoremap > >gv


" terminal config
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
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

" theme config               
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme dracula
" let g:gruvbox_contrast_light="hard"
" let g:gruvbox_contrast_dark="hard"

" key map for switching splits
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <Alt-k>    :resize +2<CR>
nnoremap <silent> <Alt-h>    :vertical resize -2<CR>
nnoremap <silent> <Alt-l>    :vertical resize +2<CR>

" Clear highlight after search
noremap <nowait><silent> <leader><Space> :noh<CR>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Alternate way to save
nnoremap <silent> <C-s> :w<CR>
" Alternate way to quit
nnoremap <silent> <C-Q> :wq!<CR>

set iskeyword+=-                      	" treat dash separated words as a word text object"

