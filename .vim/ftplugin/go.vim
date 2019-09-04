"setlocal syntax=on
let b:ale_linters = ['gopls']
let b:ale_fixers = ['gofmt']
nmap <buffer> <C-]> <Plug>(ale_go_to_definition)
nmap <buffer> <C-k> <Plug>(ale_previous_wrap)
nmap <buffer> <C-j> <Plug>(ale_next_wrap)
nmap <buffer> <leader>i <Plug>(ale_hover)
setl omnifunc=ale#completion#OmniFunc
