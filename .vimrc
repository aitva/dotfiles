set nocompatible
set nobackup
set nowritebackup
set noswapfile

" Install vim-plug. Fail if curl is missing.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
"Plug 'govim/govim'
call plug#end()

" Force 256 colors and dark background.
set t_Co=256
set bg=dark

" Force utf-8 encoding.
set encoding=utf-8

" change current directory to the buffer's directory
"set autochdir

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

" Set a red column at 80 chars.
set ruler
set cc=80
set nowrap

" Ctrl+c to exit commands.
inoremap <C-c> <ESC>
" Ex mode is fucking dumb.
nnoremap Q <Nop>

" Insert UUID using :UUID.
command UUID :normal i<C-r>=system('uuidgen')[:-2]<CR><Esc>

" Configure ALE.
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
command! ALEToggleFixer execute
    \ "let g:ale_fix_on_save = get(g:, 'ale_fix_on_save', 0) ? 0 : 1"

" Preferences for various file formats
autocmd FileType c setlocal noet ts=4 sw=4 tw=80
autocmd FileType h setlocal noet ts=4 sw=4 tw=80
autocmd FileType cpp setlocal noet ts=4 sw=4 tw=80
autocmd FileType go setlocal noet ts=4 sw=4
autocmd FileType sh setlocal noet ts=4 sw=4
autocmd BufRead,BufNewFile *.js setlocal et ts=2 sw=2
autocmd FileType html setlocal et ts=2 sw=2
autocmd FileType yaml setlocal et ts=2 sw=2
autocmd FileType markdown setlocal tw=80 et ts=2 sw=2
autocmd FileType text setlocal tw=80
autocmd FileType typescript setlocal et ts=2 sw=2
autocmd FileType python setlocal et ts=4 sw=4
