" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.config/nvim/plugged/')
" Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
" projectionist.vim: Granular project configuration 
Plug 'tpope/vim-projectionist'
" A git commit browser in Vim
Plug 'junegunn/gv.vim'
" Commands for vim-surround
" cs"' :: Replace double quotes with single
" cs'" :: Replace single with double quotes
" ds"  :: Strip leading and trailing double quotes
" ysiw' :: Add single quotes to the current word
Plug 'tpope/vim-surround'
" vim-repeat allows . to repeat changes to surrounding quotes
Plug 'tpope/vim-repeat' 
" rhubarb.vim: GitHub extension for fugitive.vim
Plug 'tpope/vim-rhubarb'
Plug 'ctrlpvim/ctrlp.vim'
" Make the yanked region apparent!
Plug 'machakann/vim-highlightedyank'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"
" ################## Language plugins
" elixir (and a bunch of other langs)
Plug 'sheerun/vim-polyglot'
" ruby / rails
Plug 'tpope/vim-rails'
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
" See https://github.com/ecomba/vim-ruby-refactoring for commands and keymaps                                      
" Main shortcut: :nnoremap <leader>rel  :RExtractLet<cr>
" :nnoremap <leader>rap  :RAddParameter<cr>
" :nnoremap <leader>rcpc :RConvertPostConditional<cr>
" :nnoremap <leader>rel  :RExtractLet<cr>
" :vnoremap <leader>rec  :RExtractConstant<cr>
" :vnoremap <leader>relv :RExtractLocalVariable<cr>
" :nnoremap <leader>rit  :RInlineTemp<cr>
" :vnoremap <leader>rrlv :RRenameLocalVariable<cr>
" :vnoremap <leader>rriv :RRenameInstanceVariable<cr>
" :vnoremap <leader>rem  :RExtractMethod<cr>
Plug 'vhladama/vim-rubyhash', { 'for': 'ruby' }
" Commands for vim-rubyhash
" <leader>rt :: stringify keys with double quotes
" <leader>rs :: symbolize keys
" <leader>rq :: stringify keys with single quotes
" <leader>rr :: turns hash into new-style ruby hash
" js / jsx / typescript
Plug 'leafgarland/typescript-vim', { 'for': ['javascript', 'typescript'] }

" Vim and Neovim plugin to reveal the commit messages under the cursor
Plug 'rhysd/git-messenger.vim'

" Themes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'
Plug 'norcalli/nvim-colorizer.lua'

" Track the engine.
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'dense-analysis/ale' " Asynchronous Lint Engine

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}

Plug 'vim-test/vim-test'
Plug 'rking/ag.vim' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomtom/tcomment_vim'
" Commands for tcomment_vim
" gcc :: Toggle comment for the curent line
" gc{motion} ::Toggle comments for motion

" A Vim plugin which shows a git diff in the 'gutter' (sign column)
Plug 'airblade/vim-gitgutter'
"A vim plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'

" autoclose html tags
Plug 'alvan/vim-closetag'

" js / jsx / ts / gql
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'typescript'] }
Plug 'leafgarland/typescript-vim', { 'for': ['javascript', 'typescript'] }
Plug 'peitalin/vim-jsx-typescript', { 'for': ['javascript', 'typescript'] }
Plug 'jparise/vim-graphql'
Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript', 'typescript'] }
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" All of your Plugins must be added before the following line
call plug#end()            " required

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
" Put your non-Plug stuff after this line

set number

" vim-plug already enables this 
" filetype plugin indent on    " Enable filetype-specific plugins, filetype-specific indenting
" syntax on             " Enable syntax highlighting

let mapleader = ","

set encoding=utf-8
set autoindent
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
set termguicolors

" nvim 0.8.0 activates the damn mouse by default :/
set mouse=

set backupdir=/tmp   
set directory=/tmp// "don't clutter my dirs with swp and tmp files

set backspace=indent,eol,start
set softtabstop=2
set shiftwidth=2
set expandtab
set background=dark
set foldmethod=indent
set nrformats=
set foldlevel=9999

highlight StatusLine ctermfg=yellow

augroup ruby_setup
  autocmd!
  autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
  autocmd BufNewFile,BufRead *.slim set ft=slim
augroup END

augroup js_setup
  autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
  autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
augroup END

" Disable AutoComplPop. 
let g:acp_enableAtStartup = 0

" switch windows with <leader> w
nmap <leader>w <C-w><C-w>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" NERDTreeTabs Toggle  
map <C-n> :NERDTreeToggle<CR>
" take me to the file location, now!
nmap <leader>f :NERDTreeFind<CR>

" weird chars fix
let g:auto_type_info=0

" clear highlighting
map <C-h> :nohl<CR>

" ctrl-s to save
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" Yggdroot/indentLine config
" let g:indentLine_char = '.'
let g:indentLine_enabled = 0

map <leader>t :IndentLinesToggle<CR>

" ctrlp configs
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_user_command = 'find %s -type f'  " MacOSX/Linux

" If ag is available use it as filename list generator instead of 'find'
if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup  --ignore ''.git'' --ignore ''.DS_Store'' --ignore  ''node_modules'' --hidden -g ""'
endif

"Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Vim test mappings
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:bufferline_echo = 0
let g:airline_theme='dracula'
let g:airline_section_c = '%F'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1

" Split resizing
nnoremap <S-Up> <C-W>-<C-W>-
nnoremap <S-Down> <C-W>+<C-W>+
nnoremap <S-Left> <C-W>><C-W>>
nnoremap <S-Right> <C-W><<C-W><

if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

" when to jump to the next line
if exists("&colorcolumn")
  set colorcolumn=80,100
endif

" change double to single quotes
nmap <leader>' cs"'

" change single to double quotes
nmap <leader>" cs"'

" Blame it!
nmap <leader>g :Git blame<CR>

" allow semicolon to serve as colon
nnoremap ; :

" faster ways to get out of insert mode
imap ;; <esc>

" also works in visual mode
vmap ;; <esc>

" http://vimcasts.org/episodes/accessing-the-system-clipboard-from-vim/

" copy to OS clipboard.
nmap <leader>y "+y
vmap <leader>y "+y
nmap <leader>yy "+yy

" paste from OS clipboard
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
vmap <leader>P "+P"`"`"

" Format and then going back to where I was 
" https://www.reddit.com/r/vim/comments/7yzblt/what_was_your_best_vimrc_addition/dul39y7/
nnoremap g= mmgg=G`m
nnoremap gQ mmgggqG`m

" ale configs
function! LoadNearestFormatter()
  let l:git_root = system("git rev-parse --show-toplevel")[:-2]
  let l:fmt = findfile(".formatter.exs", l:git_root)
  let g:ale_elixir_mix_format_options = "--dot-formatter " . l:fmt
endfunction

call LoadNearestFormatter()

let g:ale_lint_on_text_changed="never"
let g:ale_lint_on_enter=0
let g:ale_lint_on_save=1
let g:ale_fix_on_save=1
let g:ale_floating_preview=1
let g:ale_fixers = {
      \ 'elixir': ['mix_format'],
      \ 'javascript': ['prettier', 'eslint'],
      \ 'typescript': ['prettier', 'eslint'],
      \ 'typescriptreact': ['prettier', 'eslint'],
      \}


" let g:ale_elixir_elixir_ls_release='~/dev/elixir-ls/release/'
" map <Leader>a :ALELint<CR>

" vim-jsx-pretty configurations
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" vim-closetag configurations
let g:closetag_filetypes = 'html,xhtml,phtml,javascript'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js'

" UltiSnips configurations
let g:UltiSnipsExpandTrigger="<C-Space>"

" elixir configs
nnoremap <silent> <leader>co  :<C-u>CocList outline<CR>
nmap <leader>l :CocList snippets<CR>

" json pretty print
nmap <leader>j :%!python -m json.tool<CR>

augroup vimrc_plugins_coc
  autocmd CursorHold * silent call CocActionAsync('highlight')
  autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
augroup END

"
" coc.nvim
"
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
" remap for complete to use tab and <cr>
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" let g:coc_snippet_next = '<tab>'

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Use M to to blame the line (git messenger)
nnoremap <silent> M :GitMessenger<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Format a selection of SQL code
vmap <C-g> <ESC>:'<,'>! pg_format --spaces 2 --function-case 2<CR>

if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

let g:loaded_perl_provider = 0

lua << EOF
  require'colorizer'.setup()

  require'nvim-treesitter.configs'.setup {
    ensure_installed = {
      "javascript",
      "typescript",
      "rust",
      "elixir",
      "erlang",
      "c",
      "lua",
      "tsx",
      "scss",
      "ruby",
      "vim",
      "bash",
    },
    highlight = {
      enable = true
    },
    -- playground = {
    --   enable = true,
    -- },
  }
EOF

colorscheme dracula
