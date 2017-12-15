" global vim settings
:set tabstop=4 shiftwidth=4 expandtab

" vim-go settings from https://github.com/fatih/vim-go-tutorial
let g:go_fmt_command = "goimports"
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd FileType go nmap <Leader>i <Plug>(go-info)

" clang settings
autocmd BufWritePre *.c 1,$!clang-format -style="{BasedOnStyle: llvm, IndentWidth: 4}"
