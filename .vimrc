set spelllang=en_us

" auto brackets
"""
"noremap " ""<left>
"inoremap ' ''<left>
inoremap ( ()<left>
"inoremap [ []<left>
inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O



"""" Basic Behavior
set nocompatible                " try to not be the old VI
filetype plugin on
syntax enable
set number
set relativenumber
"set wrap                " wrap lines
"set encoding=utf-8      " set encoding to UTF-8 (default was latin1)
"set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
"set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
set visualbell          " blink cursor on error, instead of beeping))}]))



" Highlight TODO, FIXME, NOTE, etc. (for the stabilo I made the :highlight TODO command)
if has('autocmd') && v:version > 701
    augroup todo
                        autocmd!
                                        autocmd Syntax * call matchadd(
                                                                    \ 'Debug',
                                                                    \ '\v\W\zs<(NOTE|INFO|IDEA|TODO|FIXME|CHANGED|XXX|BUG|HACK|TRICKY)>'
                                                                    \ )
                                                    augroup END
                                                endif



"""" Vim Appearance NOTE INF INFO
" put colorscheme files in ~/.vim/colors/
" colorscheme gruvbox      " good colorschemes: murphy, slate, molokai, badwolf, solarized
" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
filetype plugin indent on



""" Tab settings
set tabstop=4           " width that a <TAB> character displays as
"set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces
set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')'}'))



"""" Search settings
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set path+=**                    " search down into subfolder


"""" Snippets
nnoremap ,cmain :-1read $HOME/.vim/.main_skeleton.c<CR>jj


"""" Hardmode
" disable the arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
