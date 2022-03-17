return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'

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

    use {
        'neovim/nvim-lspconfig'
    }
    -- use { 'hrsh7th/cmp-nvim-lsp' }
    -- use { 'hrsh7th/cmp-buffer' }
    -- use { 'hrsh7th/cmp-path' }
    -- use { 'hrsh7th/cmp-cmdline' }
    -- use { 'hrsh7th/nvim-cmp' }

    -- use { 'hrsh7th/cmp-vsnip' }
    -- use { 'hrsh7th/vim-vsnip' }
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


