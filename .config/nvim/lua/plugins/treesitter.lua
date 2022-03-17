-- Treesitter
require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
      custom_captures = {
        -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
        -- ["foo.bar"] = "Identifier",
      },
      -- Setting this to true or a list of languages will run `:h syntax` and tree-sitter at the same time.
      additional_vim_regex_highlighting = true,
    },
    incremental_selection = {
      enable = false,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
    indent = {
      enable = true
    },
}
