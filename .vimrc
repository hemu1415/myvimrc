set nocompatible
set number
set hlsearch
set ignorecase
syntax on
set ruler
set nobackup
set nowritebackup
set noswapfile
set ts=4
set expandtab
set t_Co=256
let g:netrw_liststyle=3

set runtimepath^=~/.vim/bundle/nerdtree
set runtimepath^=~/.vim/bundle/vim-airline
set runtimepath^=~/.vim/bundle/vim-airline-themes
set runtimepath^=~/.vim/bundle/minibufexpl.vim

"NERDtree
nmap <F5> :NERDTreeToggle<cr>
let NERDTreeWinPos="right"
"quit vim when main edit buff closed
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

"MiniBufExplorer
let g:miniBufExplMapCTabSwitchBufs = 1
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg

"vim-airline
let g:airline_theme='molokai'

"cscope
set nocscopeverbose
set cscopequickfix=s-,c-,d-,i-,t-,e-

"theme
colorscheme monokai
