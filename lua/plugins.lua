local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap =
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end

vim.cmd(
  [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)

return require("packer").startup(
  function(use)
    -- Packer itself
    use "wbthomason/packer.nvim"

    -- Theme
    use "kyazdani42/nvim-web-devicons"
    use "Mofiqul/dracula.nvim"
    use "morhetz/gruvbox"
    use "nvim-lualine/lualine.nvim"

    -- Start Screen
    use "mhinz/vim-startify"

    -- Explorer
    use "kyazdani42/nvim-tree.lua"
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
    use "nvim-telescope/telescope-project.nvim"
    use "ggandor/lightspeed.nvim"
    use "karb94/neoscroll.nvim"
    use "kevinhwang91/nvim-bqf"
    use "mhinz/vim-grepper"
    use "andymass/vim-matchup"
    use "markstory/vim-zoomwin"
    use "jeffkreeftmeijer/vim-numbertoggle"

    -- Terminal
    use "voldikss/vim-floaterm"

    -- History
    use "tpope/vim-fugitive"
    use "airblade/vim-gitgutter"
    use "mbbill/undotree"
    use {
      "AckslD/nvim-neoclip.lua",
      config = function()
        require("neoclip").setup()
      end
    }

    -- IDE Features
    use "editorconfig/editorconfig-vim"
    use {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate"
    }

    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "onsails/lspkind-nvim"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/vim-vsnip"

    --[[
    use {"ms-jpq/coq_nvim", branch = "coq"}
    use {"ms-jpq/coq.artifacts", branch = "artifacts"}
    use {"ms-jpq/coq.thirdparty", branch = "3p"}
    ]]
    use "mhartington/formatter.nvim"
    use "junegunn/vim-easy-align"
    use "b3nj5m1n/kommentary"
    use "captbaritone/better-indent-support-for-php-with-html"
    use "mattn/emmet-vim"
    use "tpope/vim-surround"
    use "lukas-reineke/indent-blankline.nvim"
    use "crivotz/nvim-colorizer.lua"
    use "windwp/nvim-autopairs"
    use "p00f/nvim-ts-rainbow"
    use "romgrk/nvim-treesitter-context"

    -- Run Tests
    use "vim-test/vim-test"

    -- Debug
    use "puremourning/vimspector"

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require("packer").sync()
    end
  end
)
