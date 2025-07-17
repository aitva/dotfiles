" Run the following command to install the required tools:
"   npm install --global typescript eslint

let b:ale_linters = ['tsserver', 'eslint']
let b:ale_fixers = ['eslint']
let b:ale_completion_enabled = 1
let b:ale_completion_tsserver_autoimport = 1

nmap <silent> <C-]>     <Plug>(ale_go_to_definition)
nmap <silent> <C-k>     <Plug>(ale_previous_wrap)
nmap <silent> <C-j>     <Plug>(ale_next_wrap)
nmap <silent> <leader>i <Plug>(ale_hover)

setl completeopt=menu,menuone,preview,noselect,noinsert
setl omnifunc=ale#completion#OmniFunc
