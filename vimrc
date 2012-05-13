" load license personal settings
let g:T_AUTHOR = "XXX"
let g:T_AUTHOR_EMAIL = "foo@far.com"
let g:T_DATE_FORMAT = "%c"

" maybe you need following settings to 
" fast input template information not defined
"  in formate of <+template+>
nnoremap <C-j> /<+.\{-1,}+><CR>c/+>/e<CR>
inoremap <C-j> <ESC>/<+.\{-1,}+><CR>c/+>/e<CR>
