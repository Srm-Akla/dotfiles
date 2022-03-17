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

nightfox.setup{
  fox = "nightfox", -- Which fox style should be applied
  transparent = true, -- Disable setting the background color
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

-- nightfox.load()
-- vim.o.background = 'light'
vim.cmd[[colorscheme dayfox]]

