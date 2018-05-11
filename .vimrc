execute pathogen#infect()
syntax on
filetype plugin on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
" let g:Tex_CompileRule_pdf = 'latexmk -pdf $*'
let g:Tex_UseMakefile = 1
set background=dark
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_cpp_check_header = 1
let b:syntastic_mode = 'active'
set nu
set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
set autoindent
autocmd FileType python setlocal ts=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType c setlocal ts=2 softtabstop=2 shiftwidth=2 expandtab
autocmd FileType cpp setlocal ts=2 softtabstop=2 shiftwidth=2 expandtab
autocmd BufNewFile,BufRead *.md setlocal ft=markdown
autocmd FileType markdown setlocal tw=80 spell spelllang=en_us ai
autocmd FileType tex setlocal spell spelllang=en_us tabstop=4 softtabstop=0 shiftwidth=4 noexpandtab
map <C-n> :tabn<CR>
map <C-p> :tabp<CR>
map <C-l> :SyntasticCheck<CR>
set backspace=indent,eol,start
set nojoinspaces
set scrolloff=10
