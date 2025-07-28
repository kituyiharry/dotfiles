set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"" set rtp+=~/.vim/bundle/Vundle.vim
""  call vundle#begin()
""  "alternatively, pass a path where Vundle should install plugins
""  "call vundle#begin('~/some/path/here')
"" 
""  "let Vundle manage Vundle, required
""  Plugin 'VundleVim/Vundle.vim'
"" 
""  "The following are examples of different formats supported.
""  "Keep Plugin commands between vundle#begin/end.
""  "plugin on GitHub repo
""  Plugin 'tpope/vim-fugitive'
""  "plugin from http://vim-scripts.org/vim/scripts.html
""  "Plugin 'L9'
""  "Git plugin not hosted on GitHub
""  "Plugin 'git://git.wincent.com/command-t.git'
""  "git repos on your local machine (i.e. when working on your own plugin)
""  "Plugin 'file:///home/gmarik/path/to/plugin'
""  "The sparkup vim script is in a subdirectory of this repo called vim.
""  "Pass the path to set the runtimepath properly.
""  Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
""  "Install L9 and avoid a Naming conflict if you've already installed a
""  "different version somewhere else.
""  "Plugin 'ascenator/L9', {'name': 'newL9'}
"" 
""  """"""""""""""""
""  " Aesthetics  "
""  """"""""""""""""
""  Plugin 'vim-airline/vim-airline'
""  Plugin 'vim-airline/vim-airline-themes'
""  Plugin 'morhetz/gruvbox'
""  Plugin 'ryanoasis/vim-devicons'
""  Plugin 'junegunn/goyo.vim'
""  Plugin 'mhinz/vim-startify'
""  Plugin 'Yggdroot/indentLine'
"" 
""  """""""""""""""""""
""  " Code Snippets  "
""  """""""""""""""""""
""  Plugin 'SirVer/ultisnips'
""  Plugin 'honza/vim-snippets'
"" 
""  """""""""""""""""""""
""  " Code Navigation  "
""  """""""""""""""""""""
""  "Plugin 'gleam-lang/gleam.vim'
""  Plugin 'preservim/nerdtree'
""  Plugin 'preservim/nerdcommenter'
""  Plugin 'dart-lang/dart-vim-plugin'
""  Plugin 'liuchengxu/vista.vim'
""  Plugin 'junegunn/fzf'
""  Plugin 'junegunn/fzf.vim'
""  Plugin 'wfxr/minimap.vim'
""  Plugin 'chrisbra/csv.vim'
""  if has('nvim')
""     Plugin 'nvim-lua/popup.nvim'
""     Plugin 'nvim-lua/plenary.nvim'
""     Plugin 'nvim-telescope/telescope.nvim'
""  endif
"" 
""  """""""""""""""""""""
""  " Code completion  "
""  """""""""""""""""""""
""  Plugin 'neoclide/coc.nvim'
""  Plugin 'dense-analysis/ale'
""  Plugin 'slashmili/alchemist.vim'
"" 
""  Plugin 'ocaml/vim-ocaml'
""  Plugin 'ocaml/merlin'
"" 
""  Plugin 'fatih/vim-go'
""  Plugin 'OmniSharp/omnisharp-vim'
"" 
""  """""""""""""""""
""  " Code DevOps  "
""  """""""""""""""""
""  Plugin 'airblade/vim-gitgutter'
""  Plugin 'sjl/gundo.vim'
""  Plugin 'wincent/terminus'
""  Plugin 'scrooloose/vim-slumlord'
""  Plugin 'aklt/plantuml-syntax'
""  if has('neovim')
""    Plugin 'nvim-treesitter/nvim-treesitter'
""    Plugin 'nvim-treesitter/nvim-treesitter-context'
""  else
""    Plugin 'wellle/context.vim'
""  endif
"" 
"" 
""  """""""""""""""
""  " Debugging  "
""  """""""""""""""
""  Plugin 'puremourning/vimspector'
"" 
""  """""""""""""""""
""  " Code syntax  "
""  """""""""""""""""
""  Plugin 'lervag/vimtex'
""  Plugin 'jxnblk/vim-mdx-js'
""  Plugin 'KeitaNakamura/tex-conceal.vim'
""  Plugin 'google/vim-maktaba'
""  Plugin 'cespare/vim-toml'
""  Plugin 'elixir-editors/vim-elixir'
""  Plugin 'tpope/vim-surround'
""  Plugin 'posva/vim-vue'
""  Plugin 'peterhoeg/vim-qml'
""  "Plugin 'hachibeeDI/vim-vbnet'
""  "Plugin 'jackguo380/vim-lsp-cxx-highlight'
""  Plugin 'mityu/vim-applescript'
""  Plugin 'rust-lang/rust.vim'
""  Plugin 'machakann/vim-highlightedyank'
""  Plugin 'andymass/vim-matchup'
""  Plugin 'godlygeek/tabular'
""   if has('nvim') != 1
""  "  " Plugin 'neovim/nvim-lspconfig'
""  "  " Plugin 'simrat39/rust-tools.nvim'
""  "
""  "  " Optional dependencies
""  "  " Plugin 'nvim-lua/popup.nvim'
""  "  " Plugin 'nvim-lua/plenary.nvim'
""  "  " Plugin 'nvim-telescope/telescope.nvim'
""    Plugin 'jeaye/color_coded'
""  endif
"" 
""  """"""""""""""""""""
""  " Database Stuff  "
""  """"""""""""""""""""
""  Plugin 'tpope/vim-dadbod'
"" 
""  """""""""""""""
""  " Art Stuff  "
""  """""""""""""""
""  Plugin 'gyim/vim-boxdraw'
"" 
""  "All of your Plugins must be added before the following line
""  call vundle#end()            " required
filetype plugin indent on    " required
"To ignore plugin indent changes, instead use:
filetype plugin on
filetype on
"" 
""  "Needed or else ocaml files are noticed as omlet disabling completion!!
""  autocmd BufRead,BufNewFile *.ml set filetype=ocaml
""  autocmd BufRead,BufNewFile *.mli set filetype=ocaml
""  autocmd BufRead,BufNewFile .ocamlinit set filetype=ocaml
"" 
""  "
""  "Brief help
""  ":PluginList       - lists configured plugins
""  ":PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
""  ":PluginSearch foo - searches for foo; append `!` to refresh local cache
""  ":PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""  "
""  "see :h vundle for more details or wiki for FAQ
""  "Put your non-Plugin stuff after this line
""  "
""  "nvim from vim
""  if has("nvim")
""    "let g:vimtex_compiler_progname = 'nvr'
""    let g:powerline_loaded=1
""    let g:powerline_pycmd="py3"
""    set rtp^=/usr/share/vim/vimfiles/
""    " let g:powerline_pycmd="py"
""  endif
""  let g:powerline_loaded=1
""  " set clipboard=unnamedplus
"" 
""  """"""""""""""
""  " Startify  "
""  """"""""""""""
""  let g:startify_change_to_dir = 0
"" 
"" 
""  """"""""""""
""  " VimTex  "
""  """"""""""""
""  let g:tex_flavor='latex'
""  let g:vimtex_view_method='zathura'
""  let g:vimtex_quickfix_mode=0
""  " tex-conceal
""  let g:tex_conceal='abdmg'
""  set conceallevel=1
""  " hi Conceal ctermbg=none
"" 
""  " setlocal spell
""  set spelllang=en_us
""  inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
""  "execute pathogen#infect()
"" 
""  "Turn on syntax highlighting
""  syntax on
"" 
""  if has('nvim') == 0
""    set ttymouse=xterm2
""  endif
""  set mouse=a
"" 
""  """""""""""
""  " Gundo  "
""  """""""""""
""  map <leader>gt :GundoToggle<CR>
""  map <leader>gr :GundoRenderGraph<CR>
""  let g:gundo_prefer_python3=1
"" 
""  " Pick a leader key
let mapleader=","

"Security
set modelines=0

"Show line numbers
set number
set relativenumber

"Show file stats
set ruler

"Blink cursor on error instead of beeping (grr)
set visualbell
set belloff=all

"Encoding
set encoding=utf-8
"set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
"use intelligent indentation for C
set smartindent
set autoindent

"Whitespace
set wrap
set textwidth=80
set formatoptions+=tcqrn1
set formatprg=par\ jw76
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set autoindent

"set autoindent noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

"Cursor motion
set scrolloff=3
set backspace=indent,eol,start
"Matchup plugin will handle this
"set matchpairs+=<:> " use % to jump between pairs
"runtime! macros/matchit.vim

"Move up/down editor lines
nnoremap j gj
nnoremap k gk

"Mac specific visual block
"nnoremap <c-v> <c-q>

"Allow hidden buffers
set hidden

"Rendering
set ttyfast

"Status bar
set laststatus=2

"Last line
set showmode
set showcmd

"Searching
"nnoremap / /\v
"vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
"clear search
map <leader><space> :let @/=''<cr>

"Remap help key.
"inoremap <F1> <ESC>:set invfullscreen<CR>a
"nnoremap <F1> :set invfullscreen<CR>
"vnoremap <F1> :set invfullscreen<CR>

"Textmate holdouts

"Formatting
"map <leader>q gqip
"Fold around indentations
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

"Visualize tabs and newlines
"set listchars=tab:▸\ ,eol:¬
set listchars=tab:│\ ,trail:-
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"Uncomment this to enable by default:
"
"Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

"
"Split characters
"GUI
hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg
hi VertSplit guibg=bg guifg=bg

"Vim
"remove | characters in the split
"use this one instead and hide highlights after
set fillchars+=vert:\│

set list " To enable by default
"Or use your leader key + l to toggle on/off
"Toggle tabs and EOL
map <leader>l :set list!<CR>

"Make vim remember last location when editing
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"Color scheme (terminal)
set t_Co=256
set background=dark
let g:hybrid_termcolors=256
let g:hybrid_termtrans=1
"put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
"in ~/.vim/colors/ and uncomment:
"" colorscheme gruvbox
"Next italics lines may be mac specific
"Now, to have italicized comments in Vim, add this line to your after you declare your colorscheme:
highlight Comment cterm=italic
highlight markdownItalic cterm=italic
highlight markdownBold cterm=bold
highlight markdownH1 cterm=bold
"If you still don't see Italics, add these lines to your .vimrc:
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
"set t_ZH=^[[3m
"set t_ZR=^[[23m
hi Normal ctermbg=none
hi VertSplit ctermbg=NONE

function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line("."), col(".")), 'synIDattr(v:val, "name")')
endfunc
nmap <leader>sp :call <SID>SynStack()<CR>
nmap <leader>sb :windo set scrollbind!<CR>

"Make vim load html syntax in handlebars
"au BufReadPost *.handlebars set syntax=html
"au BufReadPost *.handlebars set filetype=html

"highlight current column
set colorcolumn=76
set cursorline

"https://vi.stackexchange.com/a/13336
"
"When  you are  using another  application  and select  go back  to Vim  by
"clicking inside Vim's text area, it not only switches application focus to
"Vim, but it also moves the cursor  to that location. If you don't want the
"cursor to move, put the following in your vimrc:

augroup NO_CURSOR_MOVE_ON_FOCUS
  au!
  au FocusLost * let g:oldmouse=&mouse | set mouse=
  au FocusGained * if exists('g:oldmouse') | let &mouse=g:oldmouse | unlet g:oldmouse | endif
augroup END
"" 
""  """""""""""""
""  " Minimap  "
""  """""""""""""
""  nmap <leader>mt :MinimapToggle<CR>
""  let g:minimap_width = 20
""  "let g:minimap_auto_start = 1
""  "let g:minimap_auto_start_win_enter = 0
"" 
"" 
""  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  "                                 Airline                                   "
""  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 
""  "aurora grayscale minimalist vice
""  "let g:airline_theme='fruit_punch'
""  let g:airline_theme='base16'
""  let g:airline_powerline_fonts = 1
""  "Enable the list of buffers
""  let g:airline#extensions#tabline#enabled = 1
""  "Show just the filename
""  let g:airline#extensions#tabline#fnamemod = ':t'
""  let g:airline_left_sep = "\uE0B4"
""  let g:airline_right_sep = "\uE0B6"
"" 
""  "set the CN (column number) symbol:
""  let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])
""  let g:airline#extensions#whitespace#enabled = 0
"" 
""  inoremap <c-x><c-k> <c-x><c-k>
"" 
""  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  "                                Ultisnips                               "
""  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  " Bindings for this plugin are indeed very weird so they might clash and
""  " cause unexpected behaviour!! so far these are sane but from experience they
""  " can go haywire!#
""  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  let g:UltiSnipsUsePythonVersion=3
""  let g:UltiSnipsSnippetDirectories=["UltiSnips", "vim-snippets"]
""  let g:UltiSnipsExpandTrigger="<c-a>"
""  let g:UltiSnipsJumpForwardTrigger="<c-f>"
""  let g:UltiSnipsJumpBackwardTrigger="<c-b>"
""  let g:UltiSnipsListSnippets="<c-t>"
"" 
""  "If you want :UltiSnipsEdit to split your window.
""  let g:UltiSnipsEditSplit="vertical"
"" 
""  autocmd FileType javascript UltiSnipsAddFiletypes javascript-node
""  autocmd FileType python UltiSnipsAddFiletypes django
""  autocmd FileType handlebars UltiSnipsAddFiletypes html
""  autocmd FileType javascript.jsx UltiSnipsAddFiletypes html
""  autocmd FileType stylus UltiSnipsAddFiletypes css
""  "autocmd FileType vue UltiSnipsAddFiletypes html
""  let g:avoid_pre_processors=1
""  "autocmd FileType vue UltiSnipsAddFiletypes css
""  "autocmd FIleType vue UltiSnipsAddFiletypes javascript
""  autocmd BufReadPost,BufNewFile *.vue setlocal filetype=vue
"" 
"" 
""  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  "                            NERDTree mappings                              "
""  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  map <silent> <C-n> :NERDTreeToggle<CR>
""  map <silent> <C-f> :NERDTreeFind<CR>
"" 
""  function! s:CloseIfOnlyControlWinLeft()
""    if winnr("$") != 1
""      return
""    endif
""    if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
""          \ || &buftype == 'quickfix'
""      q
""    endif
""  endfunction
"" 
""  augroup CloseIfOnlyControlWinLeft
""    au!
""    au BufEnter * call s:CloseIfOnlyControlWinLeft()
""    au BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""  augroup END
"" 
""  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  "                       Asynchronous Linting Engine                         "
""  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  "" Set this setting in vimrc if you want to fix files automatically on save.
""  "" This is off by default.
""  set completeopt=menu,menuone,preview,noselect,noinsert "prevent insertion bug
""  let g:ale_completion_enabled = 0
""  let g:ale_sign_error = '!'
""  let g:ale_sign_warning = ''
""  let g:ale_lint_on_enter = 0
""  let g:ale_echo_msg_error_str = '!'
""  let g:ale_echo_msg_warning_str = ''
""  let g:ale_echo_msg_format = '%severity% [%linter%]: %s'
""  let g:ale_linters={
""  \  'rust': ['cargo', 'analyzer'],
""  \  'javascript': ['tsserver', 'eslint'],
""  \  'vue': ['eslint'],
""  \  'elixir': ['elixir-ls'],
""  \}
""  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  let g:ale_pattern_options = {
""        \   '.*\.cc$'  : {'ale_enabled': 0},
""        \   '.*\.cpp$' : {'ale_enabled': 0},
""        \   '.*\.rs$'  : {'ale_enabled': 0},
""        \   '.*\.dart$': {'ale_enabled': 0},
""        \   '.*\.js$'  : {'ale_enabled': 0},
""        \   '.*\.ts$'  : {'ale_enabled': 0},
""        \   '.*\.json$': {'ale_enabled': 0},
""        \   '.*\.ex$'  : {'ale_enabled': 0},
""        \   '.*\.eex$' : {'ale_enabled': 0},
""        \}
""  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 
""  let g:ale_fixers = {
""        \   '*':      ['remove_trailing_lines', 'trim_whitespace'],
""        \  'elixir':  ['mix_format'],
""        \}
"" 
""  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  "                         FZF Configuration entry                           "
""  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 
""  " fzf fuzzy search
""  let g:rg_command = '
""        \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
""        \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
""        \ -g "!{.git,node_modules,vendor,priv,_build,target}/*" '
"" 
""  command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)
""  "Likewise, Files command with preview window
"" 
""  command! -bang -nargs=? -complete=dir GitFiles
""        \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
"" 
""  map <leader>fg :GitFiles<CR>
""  map <leader>fr :Rg<CR>
""  map <leader>ff :Files<CR>
""  map <leader>fc :Commands<CR>
""  map <leader>fm :Maps<CR>
""  map <leader>fb :Buffers<CR>
""  map <leader>fs :Snippets<CR>
"" 
"" 
""  " IndentationGuides
""  let g:indent_guides_enable_on_vim_startup = 0
""  let g:indent_guides_auto_colors = 0
""  " autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=4
""  map <leader>ng :IndentLinesToggle<CR>
"" 
""  " indentline conf
""  " set list lcs=tab:\│\
""  let g:indentLine_char = '│'
"" 
""  "Vim GUI stuff
""  if has("gui_running")
""    "set guifont=Monofur\ Nerd\ Font\ Mono\ 12
""    set guioptions-=m  "remove menu bar
""    set guioptions-=T  "remove toolbar
""    set guioptions-=r  "remove right-hand scroll bar
""    set guioptions-=L  "remove left-hand scroll bar
""  endif
"" 
""  "Statusline
""  " set laststatus=2
""  set statusline=
""  " set statusline+=%-3.3n\   "buffer number
""  set statusline+=%f\       "filename
""  " set statusline+=%h%m%r%w  "status flags
""  set statusline+=\[%{strlen(&ft)?&ft:'none'}] "file type
""  set statusline+=%=        "right align remainder
""  " set statusline+=0x%-8B    "character value
""  " set statusline+=%-14(%l,%c%V%) "line, character
""  " set statusline+=%<%P            "file position
"" 
""  " GoyoToggle
""  map <leader>gy :Goyo<CR>
"" 
""  " Vim-Minimap
""  " let g:minimap_toggle='<leader>mt'
""  " let g:minimap_highlight='QuickFixLine'
"" 
""  " alchemist elixir doc
""  au filetype elixir nmap <leader>ef :call alchemist#exdef()<CR>
""  au filetype elixir nmap <leader>mf :MixFormat<CR>
""  let g:alchemist#elixir_erlang_src='~/.local/share/elixir/src'
"" 
""  "Interactive GQL window config
""  " map <leader>gq :GQLGraphiQL<CR>
""  " map <leader>ge :GQLExit<CR>
""  " map <leader>gi :GQLExecuteUnderCursor<CR>
""  " map <leader>gr :GQLRunInteractiveQuery<CR>
""  " let g:gql_endpoint = #localhost:4000/graphql#
"" 
""  """""""""""""""
""  " GitGutter  "
""  """""""""""""""
""  let g:gitgutter_sign_added='┃'
""  let g:gitgutter_sign_modified='┃'
""  let g:gitgutter_sign_removed='◢'
""  let g:gitgutter_sign_removed_first_line='◥'
""  let g:gitgutter_sign_modified_removed='◢'
"" 
""  set shortmess+=c
"" 
""  """"""""""
""  " Rust   "
""  """""""""""
""  au FileType rust nmap <leader>rr :RustRun<CR>
""  au FileType rust nmap <leader>rt :RustTest<CR>
""  au FileType rust nmap <leader>rs :CocCommand rust-analyzer.syntaxTree<CR>
""  au FileType rust nmap <leader>rg :CocCommand rust-analyzer.collectGarbage<CR>
"" 
""  """"""""""""""
""  " PlantUML  "
""  """"""""""""""
""  au filetype plantuml silent! IndentLinesDisable
"" 
"" 
""  """""""""""
""  " Golang  "
""  """""""""""
""  let g:go_def_mode='gopls'
""  let g:go_info_mode='gopls'
""  nmap <leader>glt :GoTestFunc<CR>
""  nmap <leader>gli :GoImplements<CR>
""  nmap <leader>glr :GoRun<CR>
""  nmap <leader>glb :GoBuild<CR>
""  " Completion
""  "au filetype go inoremap <buffer> . .<C-x><C-o>
"" 
""  """""""""""""""""
""  " VimInspector  "
""  """""""""""""""""
""  let g:vimspector_enable_mappings = 'HUMAN'
"" 
""  """""""""""""""""""""""""
""  " Conquer on Complete  "
""  """""""""""""""""""""""""
"" 
""  "Some servers have issues with backup files, see #649.
""  set nobackup
""  set nowritebackup
"" 
""  "Give more space for displaying messages.
""  "set cmdheight=2
"" 
""  "Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
""  "delays and poor user experience.
""  set updatetime=300
"" 
""  "Always show the signcolumn, otherwise it would shift the text each time
""  "diagnostics appear/become resolved.
""  if has("patch-8.1.1564")
""    " Recently vim can merge signcolumn and number column into one
""    set signcolumn=number
""  else
""    set signcolumn=yes
""  endif
"" 
""  "https://www.reddit.com/r/neovim/comments/weydql/cocvim_switched_to_custom_popup_menu_how_to/
""  "Use tab for trigger completion with characters ahead and navigate.
""  "NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
""  "other plugin before putting this into your config.
""  inoremap <silent><expr> <TAB>
""        \ coc#pum#visible() ? coc#pum#next(1):
""        \ CheckBackSpace() ? "\<Tab>" :
""        \ coc#refresh()
""  inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"" 
""  "Make <CR> to accept selected completion item or notify coc.nvim to format
""  "<C-g>u breaks current undo, please make your own choice.
""  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"" 
""  function! CheckBackSpace() abort
""    let col = col('.') - 1
""    return !col || getline('.')[col - 1]  =~ '\s'
""  endfunction
"" 
""  " function! CheckBackspace() abort
""  "   let col = col('.') - 1
""  "   return !col || getline('.')[col - 1]  =~ '\s'
""  " endfunction
"" 
""  "Deprecated!
""  "https://www.reddit.com/r/neovim/comments/weydql/cocvim_switched_to_custom_popup_menu_how_to/
""  "
""  "Use <c-space> to trigger completion.
""  if has('nvim')
""    inoremap <silent><expr> <c-space> coc#refresh()
""  else
""    inoremap <silent><expr> <c-@> coc#refresh()
""  endif
"" 
""  nmap <leader>cd <Plug>(coc-definition)
""  nmap <leader>ct <Plug>(coc-type-definition)
""  nmap <leader>cp <Plug>(coc-implementation)
""  nmap <leader>cr <Plug>(coc-references)
""  nmap <leader>ce <Plug>(coc-codelens-action)
""  nmap <leader>ap <Plug>(coc-diagnostic-next)
""  nmap <leader>an <Plug>(coc-diagnostic-prev)
""  nmap <leader>cf <Plug>(coc-format)
""  nmap <leader>cfs <Plug>(coc-format-selected)
"" 
""  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"" 
""  "Always show the signcolumn, otherwise it would shift the text each time
""  "diagnostics appear/become resolved.
""  "set signcolumn=yes
"" 
""  nnoremap <silent> K :call <SID>show_documentation()<CR>
"" 
""  function! s:show_documentation()
""    if (index(['vim','help'], &filetype) >= 0)
""      execute 'h '.expand('<cword>')
""    else
""      call CocAction('doHover')
""    endif
""  endfunction
"" 
""  "Highlight the symbol and its references when holding the cursor.
""  autocmd CursorHold * silent call CocActionAsync('highlight')
"" 
""  "Symbol renaming.
""  nmap <leader>rn <Plug>(coc-rename)
""  function! CocSearchCommand()
""    "execute 'CocSearch '.expand(#<cword>#)
""    execute 'CocSearch '.expand("<cword>")
""  endfunction
"" 
""  "Symbol Renaming via grep
""  nmap <leader>rnn :call CocSearchCommand()<CR>
"" 
""  "Formatting selected code.
""  xmap <leader>f  <Plug>(coc-format-selected)
""  nmap <leader>f  <Plug>(coc-format-selected)
"" 
""  augroup mygroup
""    autocmd!
""    " Setup formatexpr specified filetype(s).
""    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
""    " Update signature help on jump placeholder.
""    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
""  augroup end
"" 
""  "Applying codeAction to the selected region.
""  "Example: `<leader>aap` for current paragraph
""  xmap <leader>a  <Plug>(coc-codeaction-selected)
""  nmap <leader>a  <Plug>(coc-codeaction-selected)
"" 
""  "Apply AutoFix to problem on the current line.
""  nmap <leader>qf  <Plug>(coc-fix-current)
"" 
""  "Add `:Format` command to format current buffer.
""  command! -nargs=0 Format :call CocAction('format')
"" 
""  "Add `:Fold` command to fold current buffer.
""  command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"" 
""  "Add `:OR` command for organize imports of the current buffer.
""  command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"" 
""  "Add (Neo)Vim's native statusline support.
""  "NOTE: Please see `:h coc-status` for integrations with external plugins that
""  "provide custom statusline: lightline.vim, vim-airline.
""  "set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"" 
""  """""""""""
""  " Bazel  "
""  """""""""""
""  "nmap <leader>bb :Bazel build src/build-all<CR>
""  "nmap <leader>br :Bazel run   src/build-all<CR>
""  "nmap <leader>bt :Bazel test --test_output all --verbose_failures test/main-test <CR>
""  "nmap <leader>bc :Bazel clean --async<CR>
"" 
""  """""""""""""""
""  " Vim-vista  "
""  """""""""""""""
""  "How each level is indented and what to prepend.
""  "This could make the display more compact or more spacious.
""  "e.g., more compact: [#▸ #, ##]
""  "Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
""  let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
"" 
""  "Executive used when opening vista sidebar without specifying it.
""  "See all the avaliable executives via `:echo g:vista#executives`.
""  "let g:vista_default_executive = 'coc'
"" 
""  "Set the executive for some filetypes explicitly. Use the explicit executive
""  "instead of the default one for these filetypes when using `:Vista` without
""  "specifying the executive.
""  let g:vista_executive_for = {
""        \ 'cpp'     : 'coc',
""        \ 'python'  : 'coc',
""        \ 'rust'    : 'ctags',
""        \ 'vim'     : 'ctags',
""        \ 'c'       : 'coc',
""        \ 'markdown': 'ctags',
""        \ 'elixir'  : 'coc',
""        \ 'ocaml'   : 'coc',
""        \ 'omlet'   : 'coc'
""        \ }
"" 
""  "Declare the command including the executable and options used to generate ctags output
""  "for some certain filetypes.The file path will be appened to your custom command.
""  "For example:
""  let g:vista_ctags_cmd = {
""        \ 'haskell': 'hasktags -x -o - -c',
""        \ }
"" 
""  "To enable fzf's preview window set g:vista_fzf_preview.
""  "The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
""  "For example:
""  let g:vista_fzf_preview = ['right:100%']
""  "Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
""  let g:vista#renderer#enable_icon = 1
""  let g:vista_sidebar_width = 30
""  let g:vista_stay_on_open = 0
""  "let g:vista_sidebar_position = #vertical topleft#
"" 
""  "The default icons can't be suitable for all the filetypes, you can extend it as you wish.
""  "let g:vista#renderer#icons = {
""        "\   #function#: #\uf794#,
""        "\   #variable#: #\uf71b#,
""        "\  }
"" 
""  map <silent> <C-x> :Vista!!<CR>
"" 
""  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  "                            Terminal integration                             "
""  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 
""  map <silent> <C-t> :belowright term<CR>
"" 
""  """"""""""""""""""
""  " Vim markdown  "
""  """"""""""""""""""
""  "Disable weird underscore highlighting
""  "syn match markdownIgnore #\$x_i\$#
""  hi link markdownError Normal
"" 
""  function FindCursorPopUp()
""    let radius = get(a:000, 0, 2)
""    let srow = screenrow()
""    let scol = screencol()
""    " it's necessary to test entire rect, as some popup might be quite small
""    for r in range(srow - radius, srow + radius)
""      for c in range(scol - radius, scol + radius)
""        let winid = popup_locate(r, c)
""        if winid != 0
""          return winid
""        endif
""      endfor
""    endfor
"" 
""    return 0
""  endfunction
"" 
""  function ScrollPopUp(down)
""    let winid = FindCursorPopUp()
""    if winid == 0
""      return 0
""    endif
"" 
""    let pp = popup_getpos(winid)
""    call popup_setoptions( winid,
""          \ {'firstline' : pp.firstline + ( a:down ? 1 : -1 ) } )
"" 
""    return 1
""  endfunction
""  nnoremap <expr> <c-d> ScrollPopUp(1) ? '<esc>' : '<c-d>'
""  nnoremap <expr> <c-a> ScrollPopUp(0) ? '<esc>' : '<c-a>'
"" 
""  """""""""""""""""""""
""  " Predictive Text  "
""  """""""""""""""""""""
"" 
""  "let g:predictive#dict_path=#~/.vim/bundle/vim-predictive/dict_sample/#
"" 
""  """""""""""""""""
""  " Color Coded  "
""  """""""""""""""""
""  let g:lsp_cxx_hl_use_text_props = 1
"" 
""  "Expensive to load this
""  let g:color_coded_enabled = 0
""  let g:color_coded_filetypes = ['c', 'cpp', 'objc', 'hpp']
"" 
""  """""""""""
""  " SLime  "
""  """""""""""
""  "let g:slime_target = "tmux"
""  "
"" 
""  function LoadOcaml()
""    echom "LoadOcaml..."
""    let g:opamshare = substitute(system('opam var share'),'\n$','','''')
""    execute "set rtp+=" . g:opamshare . "/merlin/vim/"
""    set rtp+="~/.opam/default/share/ocp-indent/vim"
""    set rtp+="~/.opam/default/lib"
""    set rtp+="~/.opam/default/lib/TCSLib"
"" 
""    " === slows down startup!
""    if has("neovim") != 0
"" 
""      " #" added by OPAM user-setup for vim / base #" 93ee63e278bdfc07d1139a748ed3fff2 #" you can edit, but keep this line
""      let s:opam_share_dir = system("opam config var share")
""      let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')
"" 
""      let s:opam_configuration = {}
"" 
""      function! OpamConfOcpIndent()
""        execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
""      endfunction
""      let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')
"" 
""      function! OpamConfOcpIndex()
""        execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
""      endfunction
""      let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')
"" 
""      function! OpamConfMerlin()
""        let l:dir = s:opam_share_dir . "/merlin/vim"
""        execute "set rtp+=" . l:dir
""      endfunction
""      let s:opam_configuration['merlin'] = function('OpamConfMerlin')
"" 
""      let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
""      let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
""      let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
""      for tool in s:opam_packages
""        " Respect package order (merlin should be after ocp-index)
""        if count(s:opam_available_tools, tool) > 0
""          call s:opam_configuration[tool]()
""        endif
""      endfor
""      " #" end of OPAM user-setup addition for vim / base #" keep this line
""      " #" added by OPAM user-setup for vim / ocp-indent #" 275b0634fd60a9c582dda2d0de07599f #" you can edit, but keep this line
""      if count(s:opam_available_tools,"ocp-indent") == 0
""        source #/Users/harrykwakuloba/.opam/default/share/ocp-indent/vim/indent/ocaml.vim#
""      endif
""      " #" end of OPAM user-setup addition for vim / ocp-indent #" keep this line
""    endif
""  endfunction
"" 
""  """""""""""""
""  "  Context  "
""  """""""""""""
""  let g:context_max_height = 4
"" 
"" " ## added by OPAM user-setup for vim / base ## d611dd144a5764d46fdea4c0c2e0ba07 ## you can edit, but keep this line
"" let s:opam_share_dir = system("opam var share")
"" let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')
"" 
"" let s:opam_configuration = {}
"" 
"" function! OpamConfOcpIndent()
""   execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
"" endfunction
"" let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')
"" 
"" function! OpamConfOcpIndex()
""   execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
"" endfunction
"" let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')
"" 
"" function! OpamConfMerlin()
""   let l:dir = s:opam_share_dir . "/merlin/vim"
""   execute "set rtp+=" . l:dir
"" endfunction
"" let s:opam_configuration['merlin'] = function('OpamConfMerlin')
"" 
"" let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
"" let s:opam_available_tools = []
"" for tool in s:opam_packages
""   " Respect package order (merlin should be after ocp-index)
""   if isdirectory(s:opam_share_dir . "/" . tool)
""     call add(s:opam_available_tools, tool)
""     call s:opam_configuration[tool]()
""   endif
"" endfor
"" " ## end of OPAM user-setup addition for vim / base ## keep this line
