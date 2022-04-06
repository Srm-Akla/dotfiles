require("packages")

--  Color scheme settings
-----------------------------------------------------------------------
-- Nord
-- vim.g.nord_contrast = true
-- vim.g.nord_borders = true
-- vim.g.nord_disable_background = false
-- vim.g.nord_italic = true
-- vim.g.nord_cursorline_transparent = false
-- vim.g.nord_enable_sidebar_background = false

-- nord.set()
-----------------------------------------------------------------------
-- nightfox theme
local nightfox = require('nightfox')

nightfox.setup({
    options = {
      -- fox = "duskfox", -- Which fox style should be applied
      transparent = false, -- Disable setting the background color
      alt_nc = false, -- Non current window bg to alt color see `hl-NormalNC`
      terminal_colors = true, -- Configure the colors used when opening :terminal
      styles = {
        comments = "italic", -- Style that is applied to comments: see `highlight-args` for options
        functions = "italic,bold", -- Style that is applied to functions: see `highlight-args` for options
        keywords = "italic,bold", -- Style that is applied to keywords: see `highlight-args` for options
        strings = "NONE", -- Style that is applied to strings: see `highlight-args` for options
        variables = "NONE", -- Style that is applied to variables: see `highlight-args` for options
      },
      inverse = {
        match_paren = false, -- Enable/Disable inverse highlighting for match parens
        visual = true, -- Enable/Disable inverse highlighting for visual selection
        search = true, -- Enable/Disable inverse highlights for search highlights
      },
      colors = {}, -- Override default colors
      hlgroups = {}, -- Override highlight groups
    }
})

-----------------------------------------------------------------------
-- Lualine
require('lualine').setup {
	  options = {
	    icons_enabled = false,
	    -- theme = 'dayfox-nvim',
	    component_separators = { left = '', right = ''},
	    section_separators = { left = '', right = ''},
	    disabled_filetypes = {},
	    always_divide_middle = true,
	  },
	  sections = {
	    lualine_a = {'mode'},
	    lualine_b = {'branch'},
	    lualine_c = {'filename'},
	    lualine_x = {'encoding', 'fileformat', 'filetype'},
	    lualine_y = {'progress'},
	    lualine_z = {'location'}
	  },
	  inactive_sections = {
	    lualine_a = {},
	    lualine_b = {},
	    lualine_c = {'filename'},
	    lualine_x = {'location'},
	    lualine_y = {},
	    lualine_z = {}
	  },
	  tabline = {},
	  extensions = {}
}
-----------------------------------------------------------------------
-- Tokyo Night
-- vim.g.tokyonight_style = "day"

-----------------------------------------------------------------------
-- Dracula
vim.g.dracula_show_end_of_buffer = true
-- use transparent background
vim.g.dracula_transparent_bg = true
-- set italic comment
vim.g.dracula_italic_comment = true

-----------------------------------------------------------------------
-- Catppuccin
local catppuccin = require("catppuccin")

-- configure it
require("catppuccin").setup{
    transparent_background = false,
    term_colors = true,
    styles = {
        comments = "italic",
        functions = "bold",
        keywords = "none",
        strings = "none",
        variables = "none",
    },
    integrations = {
            treesitter = true,
            native_lsp = {
                    enabled = true,
                    virtual_text = {
                            errors = "italic",
                            hints = "italic",
                            warnings = "italic",
                            information = "italic",
                    },
                    underlines = {
                            errors = "underline",
                            hints = "underline",
                            warnings = "underline",
                            information = "underline",
                    },
            },
            lsp_trouble = false,
            cmp = true,
            lsp_saga = false,
            gitgutter = false,
            gitsigns = true,
            telescope = true,
            nvimtree = {
                    enabled = false,
                    show_root = false,
                    transparent_panel = true,
            },
            which_key = false,
            indent_blankline = {
                    enabled = true,
                    colored_indent_levels = false,
            },
            dashboard = true,
            neogit = false,
            vim_sneak = false,
            fern = false,
            barbar = false,
            markdown = true,
            lightspeed = false,
            ts_rainbow = false,
            hop = false,
            notify = true,
            telekasten = true,
    }
}

-----------------------------------------------------------------------
-- nightfox.load()
-- vim.o.background = 'light'
vim.cmd[[colorscheme duskfox]]

