" global vim settings
set tabstop=4 shiftwidth=4 expandtab
set mouse=
set t_Co=256

" vim-go settings from https://github.com/fatih/vim-go-tutorial
let g:go_fmt_command = "goimports"
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd FileType go nmap <Leader>i <Plug>(go-info)
let g:go_auto_type_info = 1

" remap go def command for ChromeOS (fullscreen might be better)
"let g:go_def_mapping_enabled=0
"autocmd FileType go nnoremap <buffer> <silent> <C-i> :GoDef<CR>
"autocmd FileType go nnoremap <buffer> <silent> <C-o> :<C-U>call go#def#StackPop(v:count1)<CR>

" clang settings
autocmd BufWritePre *.c 1,$!clang-format -style="{BasedOnStyle: llvm, IndentWidth: 4}"
