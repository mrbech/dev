"Pathogen
execute pathogen#infect()

" Color and Syntax
set background=dark
colorscheme solarized
syntax enable

"Tabs
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smartindent

" UI
set number
set cursorline
filetype plugin indent on 
set wildmode=longest,list,full
set wildmenu
set showmatch

" Tabs
map tn :tabnext <RETURN>
map tb :tabprevious <RETURN>

" Panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Searching
set incsearch

"Fold
nnoremap <space> za

"Markdown
au BufRead,BufNewFile *.md set filetype=markdown tw=80 spell

"""""""""""
" PLUGINS "
"""""""""""

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" Easymotion
map <Leader> <Plug>(easymotion-prefix)

"vim2hs
let g:haskell_conceal_wide = 1
let g:haskell_conceal_bad = 1

"Haskell hdevtools
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType <RETURN>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear <RETURN>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo <RETURN>

let g:ycm_rust_src_path = '/usr/src/rust/src'
