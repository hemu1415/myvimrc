set nocompatible
set number
set rnu
set hlsearch
set ignorecase
syntax on
set ruler
set nobackup
set nowritebackup
set noswapfile
set ts=4
set expandtab
set autoindent
set smartindent
set t_Co=256
let g:netrw_liststyle=3

set runtimepath^=~/.vim/bundle/nerdtree
set runtimepath^=~/.vim/bundle/vim-airline
set runtimepath^=~/.vim/bundle/vim-airline-themes
set runtimepath^=~/.vim/bundle/minibufexpl.vim
set runtimepath^=~/.vim/bundle/tagbar

"tagbar
nmap <F8> :TagbarToggle<cr>

"NERDtree
nmap <F5> :NERDTreeToggle<cr>
"let NERDTreeWinPos="right" "don't use this, or quickfix window opens under the Nerdtree window or Tagbar window.

"quit vim when main edit buff closed
"autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

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

" powerline symbols
if has("unix")
    if has("win32unix")
        "for cygwin
    else
        let g:airline_powerline_fonts = 1
        if !exists('g:airline_symbols')
            let g:airline_symbols = {}
        endif
        let g:airline_left_sep = ''
        let g:airline_left_alt_sep = ''
        let g:airline_right_sep = ''
        let g:airline_right_alt_sep = ''
        let g:airline_symbols.branch = ''
        let g:airline_symbols.readonly = ''
        let g:airline_symbols.linenr = '☰'
        let g:airline_symbols.maxlinenr = ''
    endif
endif

"cscope
set nocscopeverbose
set cscopequickfix=s-,c-,d-,i-,t-,e-

"theme
colorscheme monokai

" This trigger takes advantage of the fact that the quickfix window can be
" easily distinguished by its file-type, qf. The wincmd J command is
" equivalent to the Ctrl+W, Shift+J shortcut telling Vim to move a window to
" the very bottom (see :help :wincmd and :help ^WJ).
autocmd FileType qf wincmd J
