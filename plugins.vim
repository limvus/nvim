call plug#begin()
"Theme"
Plug 'kyazdani42/nvim-web-devicons'
Plug 'Mofiqul/dracula.nvim'
Plug 'morhetz/gruvbox'
Plug 'nvim-lualine/lualine.nvim'

" Explorer"
Plug 'kyazdani42/nvim-tree.lua'
"Start Page"
Plug 'mhinz/vim-startify'
"Syntax highlighting"
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Comment"
Plug 'b3nj5m1n/kommentary'
"Show indent line"
Plug 'lukas-reineke/indent-blankline.nvim'
"Fuzzy finder"
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Git integration"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"Search and replace"
Plug 'brooth/far.vim'
"Auto close brackets"
Plug 'windwp/nvim-autopairs'
"Ide features: go to definition, autocomplete, linting, formating etc."
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
"Run tests"
Plug 'vim-test/vim-test'
"Debug"
Plug 'puremourning/vimspector'
"Undo"
Plug 'mbbill/undotree'
"Editor config"
Plug 'editorconfig/editorconfig-vim'
call plug#end()



" plugins config
source $HOME/.config/nvim/plug-config/lualine.vim
source $HOME/.config/nvim/plug-config/nvim-tree.vim
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/treesitter.vim
source $HOME/.config/nvim/plug-config/kommentary.vim
source $HOME/.config/nvim/plug-config/indent-blankline.vim
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/far.vim
source $HOME/.config/nvim/plug-config/autopairs.vim
source $HOME/.config/nvim/plug-config/nvim-lsp.lua
source $HOME/.config/nvim/plug-config/coq-nvim.vim
source $HOME/.config/nvim/plug-config/vim-test.vim
source $HOME/.config/nvim/plug-config/vimspector.vim
