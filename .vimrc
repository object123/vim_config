set nocompatible
syntax on
filetype plugin indent on
set ic
set hlsearch
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb2312,gb18030,cp936,gbk,big5,latin1
set fileencoding=utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8
set termencoding=gb18030
set helplang=cn
"set termencoding=utf-8
set ambiwidth=double
set cursorline
set splitbelow
set splitright
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
set autoindent
set smartindent
set showmatch
set scrolloff=5
set nu
set fencs=utf-8,gb18030,ucs-bom,default,latin1
set showtabline=0
set guifont=Monaco:h13
set laststatus=2
set selection=exclusive
set matchtime=5
set autoread

set cursorline
set cursorcolumn
let g:airline_powerline_fonts = 1
let g:airline_theme="dark"
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#buffer_nr_show = 1
let g:solarized_termcolors=256
set background=dark
set tabstop=4
set incsearch

inoremap jj <ESC>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set guifont=Powerline_Consolas:h14:cANSI
let python_highlight_all=1
au Filetype python set tabstop=4
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
au Filetype python set textwidth=90
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99

map <F5> :call CompileRun()<CR>
func! CompileRun()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!clear"
		exec "!time python3 %"
	elseif &filetype == 'html'
		exec "!firefox % &"
	elseif &fieltype == 'go'
		exec "!go build %<"
		exxec "!time go run %"
	elseif &filetype == 'mkd'
		exec "!~/.vim/markdown.pl % > %.html &"
		exec "!firefox %.html &"
	endifh
endfunc


let g:ale_set_highlights = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_enter = 0
let g:indentLine_char='|'
let g:indentLine_enabled = 1
let g:Autopep8_disable_show_diff=1
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
nmap <Leader>d :ALEDetail<CR>
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['flake8'],
\}
set background=dark
"colorscheme jellybeans
colorscheme molokai
"colorscheme desert
"colorscheme gruvbox
"colorscheme solarized
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
map <F2> :NERDTreeToggle<CR>
let g:autopep8_disable_show_diff = 1
let NERDTreeChDirMode=1
let NEADTreeShowBookmarks=1
let NEADTreeShowIgnore=['\~$','\..pyc$','\.swp$']
let NERDTreeWinSize=25
map <F4> <leader>ci <CR>
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin(~/some/path/here)
"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Yggdroot/LeaderF'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'

"Plugin 'ryanoasis/vim-devicons'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mhinz/vim-startify'
"theme color
Plugin 'flazz/vim-colorschemes'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'nanotech/jellybeans.vim'

"Add all your lugins here (note older versions of Vundle used Bundle of
"Plugins)
Plugin 'Valloric/YouCompleteMe'

"All of your Plugins must be added before the following line
call  vundle#end()   "required
filetype plugin indent on
 


