return require('packer').startup(function()
    -- [Plugins]
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = 'nvim-lua/plenary.nvim'
    }
    use 'nvim-treesitter/nvim-treesitter'
    use {
	    "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use "lukas-reineke/indent-blankline.nvim"
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'neovim/nvim-lspconfig'    
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- [Themes]
    use 'tomasiser/vim-code-dark'
end)
