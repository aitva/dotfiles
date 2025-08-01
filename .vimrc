set nocompatible

" Don't litter with swap files and backups
set nobackup
set nowritebackup
set noswapfile

" Force 256 colors and dark background.
set t_Co=256

" Improves Kitty support if present.
let $VIMKITTY = $HOME . "/.vimrc-kitty"
if filereadable($VIMKITTY)
    source $VIMKITTY
endif

" Force utf-8 encoding.
set encoding=utf-8

" change current directory to the buffer's directory
set autochdir

" Turn on auto-indenting.
set autoindent
set smartindent
filetype indent on

" Define sensible backspace behaviour.
set backspace=2

" Default to 4 spaces tab expanded to spaces.
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always show status line.
set laststatus=2

" Turn on the sign column so you can see error marks on lines
" where there are quickfix errors. Some users who already show line number
" might prefer to instead have the signs shown in the number column; in which
" case set signcolumn=number
set signcolumn=yes

" Set a red column at 81 chars.
set ruler
set cc=81
set nowrap

" Open split below.
set splitbelow

" Set hidden char symbols.
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬,space:.

" Ctrl+c to exit commands.
inoremap <C-c> <ESC>
" Ex mode is fucking dumb.
nnoremap Q <Nop>

" Configure Markdown scheme
"let g:vim_markdown_folding_disabled=1
let g:vim_markdown_folding_level = 6
let g:vim_markdown_frontmatter=1

" Preferences for various file formats
autocmd FileType c setlocal noet ts=4 sw=4 tw=80
autocmd FileType h setlocal noet ts=4 sw=4 tw=80
autocmd FileType cpp setlocal noet ts=4 sw=4 tw=80
autocmd FileType go setlocal noet ts=4 sw=4
autocmd FileType sh setlocal noet ts=4 sw=4
autocmd BufRead,BufNewFile *.js setlocal et ts=2 sw=2
autocmd BufRead,BufNewFile Caddyfile* setlocal noet ts=4 sw=4
autocmd FileType html setlocal et ts=4 sw=4
autocmd FileType yaml setlocal et ts=2 sw=2
autocmd FileType markdown setlocal tw=80 et ts=2 sw=2 smarttab nofoldenable
autocmd FileType markdown_wrap setlocal et ts=2 sw=2 columns=80 linebreak wrap cc& tw&
autocmd FileType text setlocal tw=80
autocmd FileType typescript setlocal et ts=2 sw=2
autocmd FileType vue setlocal et ts=2 sw=2
autocmd FileType python setlocal et ts=4 sw=4

" Colorscheme
syntax enable
if &bg is "dark"
   colorscheme ron
endif
highlight Search ctermbg=12
highlight NonText ctermfg=darkgrey
highlight SpecialKey ctermfg=darkgrey
highlight clear SignColumn
highlight Comment cterm=bold ctermfg=none
highlight StatusLine cterm=none ctermbg=none ctermfg=darkgrey
highlight StatusLineNC cterm=none ctermbg=none ctermfg=darkgrey
highlight Title cterm=none ctermfg=darkgrey
highlight TabLineFill cterm=none
highlight TabLine cterm=none ctermfg=darkgrey ctermbg=none
highlight ColorColumn ctermbg=darkgrey guibg=lightgrey
highlight jsParensError ctermbg=NONE
highlight Todo ctermbg=NONE ctermfg=red cterm=bold
highlight PreProc ctermfg=grey
"highlight String ctermfg=darkblue cterm=italic
highlight Type ctermfg=darkblue
highlight lineNr ctermfg=grey cterm=italic
highlight cIncluded ctermfg=NONE cterm=bold
highlight pythonInclude ctermfg=blue
highlight pythonConditional ctermfg=darkcyan
highlight pythonBuiltin ctermfg=darkcyan
highlight Pmenu ctermbg=white ctermfg=black
highlight PmenuSel ctermbg=darkcyan ctermfg=black
highlight Visual term=reverse cterm=reverse guibg=Grey

" Enable copy in hterm / Secure Shell.
if !empty($HTERM) || $TERM == "xterm-kitty"
    vmap <C-y> y:call osc52#send(getreg('"'))<CR>
endif

" Enable Plug if present.
let $VIMPLUG = $HOME . "/.vimrc-plug"
if filereadable($VIMPLUG)
    source $VIMPLUG
endif
