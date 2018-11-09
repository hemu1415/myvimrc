set nocompatible
set number
"set paste
set hlsearch
set ignorecase
syntax on
set background=dark

set ruler

set nobackup
set nowritebackup
set noswapfile

set ts=4
set expandtab

let g:netrw_liststyle=3

"NERDtree
nmap <F5> :NERDTreeToggle<cr>

"taglist
"nmap <F8> :TlistToggle<cr>

"MiniBufExplorer
let g:miniBufExplMapCTabSwitchBufs = 1
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg

set runtimepath^=~/.vim/bundle/nerdtree
set runtimepath^=~/.vim/bundle/vim-airline
set runtimepath^=~/.vim/bundle/vim-airline-themes
set runtimepath^=~/.vim/bundle/minibufexpl.vim

colorscheme monokai
let g:airline_theme='molokai'
set nocscopeverbose
"set cscopequickfix=s-,c-,d-,i-,t-,e-
set cscopequickfix=s-,c-,d-,i-,t-,e-,a-

"quit vim when main edit buff closed
"autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif
