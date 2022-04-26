--  General
local o = vim.o
local wo = vim.wo
local bo = vim.bo
local g = vim.g
local opt = vim.opt

-- global options
opt.swapfile = true
opt.dir = '/tmp'
opt.smartcase = true
opt.laststatus = 2
opt.hlsearch = true
opt.scrolloff = 12
opt.visualbell = true
opt.ignorecase = true	--  Always case-insensitive
opt.incsearch = true	--  Searches for strings incrementally
opt.wildmenu = true
opt.wildignorecase = true
opt.showmode = false
opt.smarttab = true	    	--  Enable smart-tabs
opt.ruler	= true			--  Show row and column ruler information

-- window-local options
opt.number = true
opt.relativenumber = true
opt.wrap = true
opt.showbreak = "+++" 	--  Wrap-broken line prefix

-- buffer-local options
opt.expandtab = true
opt.tabstop=8
opt.softtabstop=0   	--  Number of spaces per Tab
opt.shiftwidth=4    	--  Number of auto-indent spaces
opt.undolevels=100	--  Number of undo levels
opt.textwidth=500	--  Line wrap (number of cols)
opt.autoindent = true	    	--  Smart-indent new lines
opt.smartindent = true		--  Enable smart-indent
opt.cindent = true

opt.showmatch = false	--  Highlight matching brace
-- o.nocompatible
-- o.backspace=indent,eol,start	--  Backspace behaviour
-- o.wildmode=longest:full,full
-- vim.g.netrw_banner = false

vim.g.completeopt="menu,menuone,noselect,noinsert"

-- Options for Nvim-tree
vim.g.nvim_tree_git_hl = true -- false by default, will enable file highlight for git attributes (can be used without the icons).
vim.g.nvim_tree_highlight_opened_files = true -- false by default, will enable folder and file icon highlight for opened files/directories.
vim.g.nvim_tree_root_folder_modifier = ':~' -- This is the default. See :help filename-modifiers for more options
vim.g.nvim_tree_add_trailing = true -- false by default, append a trailing slash to folder names
vim.g.nvim_tree_group_empty = true --  false by default, compact folders that only contain a single folder into one node in the file tree
--vim.g.nvim_tree_icon_padding = ' ' -- one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
-- vim.g.nvim_tree_symlink_arrow = ' >> ' --  defaults to ' ➛ '. used as a separator between symlinks' source and target.
vim.g.nvim_tree_respect_buf_cwd = true -- false by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
vim.g.nvim_tree_create_in_closed_folder = true -- false by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when false, and inside the folder when true.
-- vim.g.nvim_tree_special_files = { README.md = true, Makefile = true, MAKEFILE = true } --  List of filenames that gets highlighted with NvimTreeSpecialFile
vim.g.nvim_tree_show_icons = {
    git = true,
    folders = false,
    files = false,
    folder_arrows = false,
    }

