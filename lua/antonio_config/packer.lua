-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- theme onedark
  use({
        "nvim-telescope/telescope.nvim",
        requires = {
            { 'nvim-lua/plenary.nvim' },
            {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
        },
    })
  use({'navarasu/onedark.nvim', as = "onedark", config = function() vim.cmd("colorscheme onedark")end})
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
        "L3MON4D3/LuaSnip"
    })

    --use({
        --"windwp/nvim-autopairs"
    --})
    use("mbbill/undotree")
    use({
        'numToStr/Comment.nvim',
        requires = {
            'JoosepAlviste/nvim-ts-context-commentstring'
        }
    })
end)
