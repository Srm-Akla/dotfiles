return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
    }
    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Treesitter

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Css colors
    use{
        'norcalli/nvim-colorizer.lua'
    }
    -- Neorg
    use {
        "nvim-neorg/neorg",
        requires = "nvim-lua/plenary.nvim"
    }

    use {
        'kyazdani42/nvim-tree.lua',
         requires = 'kyazdani42/nvim-web-devicons' -- optional, for file icon
    }
     use {
         'mrjones2014/load-all.nvim',
         requires = 'nvim-lua/plenary.nvim'
     }
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Auto completion
     use { 
         'hrsh7th/cmp-nvim-lsp',
         'hrsh7th/cmp-buffer',
         'hrsh7th/cmp-path',
         'hrsh7th/cmp-cmdline',
         'hrsh7th/nvim-cmp',
         'hrsh7th/cmp-vsnip',
         'hrsh7th/vim-vsnip',
    }

    use 'windwp/nvim-autopairs'
    -- Color Scheme
    use 'Mofiqul/dracula.nvim'
    -- use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
    -- use 'shaunsingh/nord.nvim'
    use({
	"catppuccin/nvim",
	as = "catppuccin"
    })
    use 'folke/tokyonight.nvim'
    use 'EdenEast/nightfox.nvim'
end)



