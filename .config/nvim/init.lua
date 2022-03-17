-- Author: Srm-Akla
----------------------------------
-- Imports
require("options")
require("keybindings")
require("themes")
require("packages")
require('load-all')(os.getenv('HOME') .. '/.config/nvim/lua/plugins')
-- require("plugins")
----------------------------------

-- ab #d #define 
-- ab #i #include <> 

-- filetype plugin indent on
-- filetype plugin on

-- au BufNewFile,BufRead /*.rasi setf css
-- au FileType c,cpp,java set mps+==:;

vim.cmd [[
    "Keep the folds
    augroup remember_folds
      autocmd!
      au BufWinLeave ?* mkview 1
      au BufWinEnter ?* silent! loadview 1
    augroup END
]]

vim.cmd [[ 
    au BufNewFile,BufRead /*.rasi setf css
    au BufNewFile,BufRead /*.Xresources setf xdefaults
    au BufNewFile,BufRead /*.conf   setf xdefaults

    " Octave syntax
    augroup filetypedetect
      au! BufRead,BufNewFile *.m,*.oct set filetype=octave
    augroup END
]] 

vim.cmd [[ au TermOpen term://* setlocal nonumber norelativenumber | setfiletype terminal ]]

