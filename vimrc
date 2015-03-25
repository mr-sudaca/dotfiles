set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
" Commands for vim-surround
" cs"' :: Replace double quotes with single
" cs'" :: Replace single with double quotes
" ds"  :: Strip leading and trailing double quotes
" ysiw' :: Add single quotes to the current word
Bundle 'tpope/vim-repeat' 
" vim-repeat allows . to repeat changes to surrounding quotes
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'Shougo/neocomplcache'
Bundle 'jpo/vim-railscasts-theme'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "claco/jasmine.vim"
Bundle "wookiehangover/jshint.vim"
Plugin 'thoughtbot/vim-rspec'
Bundle 'rking/ag.vim' 
Bundle 'bling/vim-bufferline'
Bundle 'bling/vim-airline'
Bundle 'vhladama/vim-rubyhash'
" Commands for vim-rubyhash
" <leader>rt :: stringify keys with double quotes
" <leader>rs :: symbolize keys
" <leader>rq :: stringify keys with single quotes
" <leader>rr :: turns hash into new-style ruby hash
Bundle 'tomtom/tcomment_vim'
" Commands for tcomment_vim
" gcc :: Toggle comment for the curent line
" gc{motion} ::Toggle comments for motion

" All of your Plugins must be added before the following line
call vundle#end()            " required

"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
set t_Co=256
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

syntax on             " Enable syntax highlighting

let mapleader = ","

set autoindent
set smartindent
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set title
set ruler
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase
set hidden
set number
set hlsearch
set history=1000
set autoread
set undolevels=1000

set backupdir=/tmp   
set directory=/tmp "don't clutter my dirs with swp and tmp files

set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set expandtab
set ai 
set et

" Status line
set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position
set statusline+=%{fugitive#statusline()}

highlight StatusLine ctermfg=yellow

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete

" Disable AutoComplPop. 
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1


" switch windows with <leader> w
nmap <leader>w <C-w><C-w>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" NERDTreeTabs Toggle  
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0


" weird chars fix
let g:auto_type_info=0


" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>


" clear highlighting
map <C-h> :nohl<CR>

" ctrl-s to save
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" ctrl-n maps to :cn (next search result) 
" ctrl-p maps to :cp (prev search result)
" map <C-n> :cn<CR>
" map <C-p> :cp<CR>


" ctrlp configs
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_user_command = 'find %s -type f'  " MacOSX/Linux



"Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv


" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:bufferline_echo = 0
let g:airline_theme = 'luna'
let g:airline_section_c = ''
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_powerline_fonts = 1

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8

colorscheme railscasts
