let b:ale_linters = ['gopls', 'golangci-lint']
let b:ale_fixers = ['goimports']
let b:ale_go_golangci_lint_options = ''

nmap <silent> <C-]>     <Plug>(ale_go_to_definition)
nmap <silent> <C-k>     <Plug>(ale_previous_wrap)
nmap <silent> <C-j>     <Plug>(ale_next_wrap)
nmap <silent> <leader>i <Plug>(ale_hover)

set completeopt=menu,menuone,preview,noselect,noinsert
set omnifunc=ale#completion#OmniFunc
