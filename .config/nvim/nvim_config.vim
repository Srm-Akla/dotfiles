"Author: Srm-Akla

"----------------------------------
" General
set number relativenumber " Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ " Wrap-broken line prefix
set textwidth=500	" Line wrap (number of cols)
set showmatch	" Highlight matching brace

set visualbell
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
set nocompatible

set cindent
set autoindent	    " Smart-indent new lines
set shiftwidth=4    " Number of auto-indent spaces
set smartindent	    " Enable smart-indent
set smarttab	    " Enable smart-tabs
set softtabstop=4   " Number of spaces per Tab
set ruler	" Show row and column ruler information
set noshowmode
 
set undolevels=100	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
set wildmenu
set wildmode=longest:full,full
set wildignorecase

ab #d #define 
ab #i #include <> 

filetype plugin indent on
filetype plugin on

" Files
au BufNewFile,BufRead /*.rasi setf css
au FileType c,cpp,java set mps+==:;
"----------------------------------
"Plugins
call plug#begin('~/.config/nvim/autoload/plugged')

"Auto Pairs brackets, parens, quotes
Plug 'jiangmiao/auto-pairs'
"Plug 'lervag/vimtex'
Plug 'itchyny/lightline.vim'
"Plug 'junegunn/fzf'
Plug 'takac/vim-hardtime'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Color Schemes
Plug 'joshdick/onedark.vim'
Plug 'ntk148v/vim-horizon'
Plug 'rktjmp/lush.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'tomasiser/vim-code-dark'
"Plug 'mhartington/oceanic-next'
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-one'
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
"Plug 'altercation/vim-colors-solarized'
Plug 'cocopon/iceberg.vim/'
Plug 'ghifarit53/tokyonight-vim'
Plug 'dracula/vim', { 'as': 'dracula' }

"Programming
"Plug 'rust-lang/rust.vim'
Plug 'bfrg/vim-cpp-modern'
Plug 'vimwiki/vimwiki'

" Nvim 0.5

call plug#end()
"----------------------------------
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif
"----------------------------------
"Color schemes 

syntax on

" Color scheme settings
"let g:nord_cursor_line_number_background = 1
"let g:nord_bold_vertical_split_line = 1
"let g:nord_uniform_status_lines = 1
"let g:nord_bold = 1
"let g:nord_italic = 1
"let g:nord_italic_comments = 1
"let g:nord_contrast = 1

"let g:solarized_termcolors=256
"let g:solarized_contrast="normal"
"let g:solarized_visibility="normal"

let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_transparent_bg = 1
let g:gruvbox_underline = 1
let g:gruvbox_contrast_light = "medium"


let g:tokyonight_style = 'storm'
let g:tokyonight_transparent_background = 0
let g:tokyonight_enable_italic = 1

"let ayucolor="mirage"

let g:lightline = {
	\ 'colorscheme': 'solarized',
	\   }

set background=light
colorscheme tokyonight

"Terminal

"----------------------------------
"Keybindings

"nmap <C-Enter> O<Esc>

"Terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <leader>c :edit $HOME/.config/nvim/init.vim
inoremap <leader>c :edit $HOME/.config/nvim/init.vim

nnoremap <leader>wf :edit $HOME/vimwiki/Personal_Dashboard/Languages/French
inoremap <leader>wf :edit $HOME/vimwiki/Personal_Dashboard/Languages/French

"----------------------------------
"Vim_Wiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
		    \	'path_html': '~/vimwiki/html/',
		    \	'auto_toc': 1,
                    \	'syntax': 'markdown'}]

:nmap <Leader>tl <Plug>VimwikiToggleListItem
:vmap <Leader>tl <Plug>VimwikiToggleListItem
"----------------------------------
"Hard_Mode
let g:hardtime_default_on = 1
"let g:list_of_disabled_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:hardtime_timeout = 1000
let g:hardtime_allow_different_key = 1
let g:hardtime_maxcount = 2
"----------------------------------
"Netrw
let g:netrw_banner = 0

command! Scratch lua require'tools'.makeScratch()
