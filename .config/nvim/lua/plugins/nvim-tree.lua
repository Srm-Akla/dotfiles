-- Nvim-tree
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
 renderer = {
    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = false,
    },
  },
----    nvim_tree_icons   = {
 --     'default': '',
 --     'symlink': '',
 --     'git': {
 --       'unstaged': "✗",
 --       'staged': "✓",
 --       'unmerged': "",
 --       'renamed': "➜",
 --       'untracked': "★",
 --       'deleted': "",
 --       'ignored': "◌"
 --       },
 --     'folder': {
 --       'arrow_open': "",
 --       'arrow_closed': "",
 --       'default': "",
 --       'open': "",
 --       'empty': "",
 --       'empty_open': "",
 --       'symlink': "",
 --       'symlink_open': "",
 --       }
 --   },
  diagnostics = {
    enable = false,
    icons = {
      git = false,
      folders = false,
      files = false,
      folder_arrows = false,
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 25,
    height = 25,
    hide_root_folder = false,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}
