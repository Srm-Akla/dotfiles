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
