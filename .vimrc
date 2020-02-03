set nocompatible
set nobackup
set nowritebackup
set noswapfile
set bg=dark
set autochdir

filetype plugin on

" Suggestion: turn on auto-indenting. If you want closing parentheses, braces
" etc to be added, https://github.com/jiangmiao/auto-pairs. In future we might
" include this by default in govim.
set autoindent
set smartindent
filetype indent on

" Suggestion: define sensible backspace behaviour. See :help backspace for
" more details
set backspace=2

" default to 4 spaces tab expanded to spaces
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" enable keyboard arrows when using tmux
" https://superuser.com/a/402084
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" install vim-plug
" fail if curl is missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" install plugins
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
"Plug 'govim/govim'
call plug#end()

" configure ALE
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
command! ALEToggleFixer execute "let g:ale_fix_on_save = get(g:, 'ale_fix_on_save', 0) ? 0 : 1"

" insert UUID using :UUID
command UUID :normal i<C-r>=system('uuidgen')[:-2]<CR><Esc>
