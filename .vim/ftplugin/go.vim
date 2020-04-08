" Ale config
let b:ale_linters = ['gopls', 'golangci-lint']
let b:ale_fixers = ['goimports']
let b:ale_go_golangci_lint_options = ''

nmap <silent> <C-]>     <Plug>(ale_go_to_definition)
nmap <silent> <C-k>     <Plug>(ale_previous_wrap)
nmap <silent> <C-j>     <Plug>(ale_next_wrap)
nmap <silent> <leader>i <Plug>(ale_hover)

set completeopt=menu,menuone,preview,noselect,noinsert
set omnifunc=ale#completion#OmniFunc


" GoVim config
" Suggestion: show info for completion candidates in a popup menu
"if has("patch-8.1.1904")
"	set completeopt+=popup
"	set completepopup=align:menu,border:off,highlight:Pmenu
"endif
"set completeopt+=noselect,noinsert
"nmap <silent> <buffer> <Leader>h : <C-u>call GOVIMHover()<CR>
