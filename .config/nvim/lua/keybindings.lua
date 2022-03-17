-- -- ----------------------------------
-- -- Keybindings
-- 
-- -- nmap <C-Enter> O<Esc>

local map = vim.api.nvim_set_keymap

vim.g.mapleader = "\\"

date = os.date("%y-%m-%d")

-- map( "n", "<leader>nf", ":edit ~/neorg/index.norg<CR>", { noremap = true })
map( "n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true })
map( "t", "<Esc>", "<C-\\><C-n>", { noremap = true })

map( "n", "<leader>nei", ":edit ~/neorg/index.norg<CR>", { noremap = true })
map( "n", "<leader>nej", ":edit ~/neorg/Journal/Journal_".. date ..".norg<CR>", { noremap = true })

-- -- Terminal
-- tnoremap <A-h> <C-\><C-N><C-w>h
-- tnoremap <A-j> <C-\><C-N><C-w>j
-- tnoremap <A-k> <C-\><C-N><C-w>k
-- tnoremap <A-l> <C-\><C-N><C-w>l
-- inoremap <A-h> <C-\><C-N><C-w>h
-- inoremap <A-j> <C-\><C-N><C-w>j
-- inoremap <A-k> <C-\><C-N><C-w>k
-- inoremap <A-l> <C-\><C-N><C-w>l
-- nnoremap <A-h> <C-w>h
-- nnoremap <A-j> <C-w>j
-- nnoremap <A-k> <C-w>k
-- nnoremap <A-l> <C-w>l
