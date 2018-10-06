" global vim settings
set tabstop=4 shiftwidth=4 expandtab
set mouse=
set encoding=utf-8
set bg=dark
set autochdir

" install vim-plug 
" fail if curl is missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" install plugins
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'w0rp/ale'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" enable keyboard arrows when using tmux
" https://superuser.com/a/402084
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" ale settings
let g:ale_linters_explicit = 1
let b:ale_linters = {'javascript': ['eslint']}

" vim-go settings from https://github.com/fatih/vim-go-tutorial
let g:go_fmt_command = "goimports"
let g:go_def_mode = 'godef'
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <Leader>i <Plug>(go-info)
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd BufRead,BufNewFile *.gohtml set filetype=gohtmltmpl

" clang settings
autocmd BufWritePre *.c 1,$!clang-format -style="{BasedOnStyle: llvm, IndentWidth: 4}"
