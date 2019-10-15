setl tabstop=4
setl shiftwidth=4
setl completeopt=menu,menuone,preview,noselect,noinsert

"let b:ale_linters = ['gopls', 'golint']
"let b:ale_fixers = ['goimports']
"nmap <buffer> <C-]> <Plug>(ale_go_to_definition)
"nmap <buffer> <C-k> <Plug>(ale_previous_wrap)
"nmap <buffer> <C-j> <Plug>(ale_next_wrap)
"nmap <buffer> <leader>i <Plug>(ale_hover)

"setl omnifunc=ale#completion#OmniFunc

" Suggestion: By default, govim populates the quickfix window with diagnostics
" reported by gopls after a period of inactivity, the time period being
" defined by updatetime (help updatetime). Here we suggest a short updatetime
" time in order that govim/Vim are more responsive/IDE-like
setl updatetime=500

" Suggestion: To make govim/Vim more responsive/IDE-like, we suggest a short
" balloondelay
setl balloondelay=250

" Suggestion: Turn on the sign column so you can see error marks on lines
" where there are quickfix errors. Some users who already show line number
" might prefer to instead have the signs shown in the number column; in which
" case set signcolumn=number (requires Vim >= v8.1.1564)
setl signcolumn=yes

nmap <silent> <buffer> <Leader>h : <C-u>call GOVIMHover()<CR>

if has("patch-8.1.1904")
  setl completeopt+=popup
  setl completepopup=align:menu,border:off,highlight:Pmenu
endif
