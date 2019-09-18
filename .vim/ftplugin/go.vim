setl tabstop=4
setl shiftwidth=4

let b:ale_linters = ['gopls', 'golint']
let b:ale_fixers = ['goimports']
nmap <buffer> <C-]> <Plug>(ale_go_to_definition)
nmap <buffer> <C-k> <Plug>(ale_previous_wrap)
nmap <buffer> <C-j> <Plug>(ale_next_wrap)
nmap <buffer> <leader>i <Plug>(ale_hover)

setl completeopt=menu,menuone,preview,noselect,noinsert
setl omnifunc=ale#completion#OmniFunc
