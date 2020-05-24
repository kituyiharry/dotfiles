set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

""""""""""""""""
"  Aesthetics  "
""""""""""""""""
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'ryanoasis/vim-devicons'
Plugin 'junegunn/goyo.vim'

"""""""""""""""""""
"  Code Snippets  "
"""""""""""""""""""
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"

"""""""""""""""""""""
"  Code Navigation  "
"""""""""""""""""""""
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'liuchengxu/vista.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
"Plugin 'prabirshrestha/async.vim'
"Plugin 'prabirshrestha/vim-lsp'
"Plugin 'ycm-core/YouCompleteMe'

"""""""""""""""""""""
"  Code completion  "
"""""""""""""""""""""
Plugin 'natebosch/vim-lsc'
Plugin 'natebosch/vim-lsc-dart'
Plugin 'neoclide/coc.nvim'
Plugin 'dense-analysis/ale'
Plugin 'slashmili/alchemist.vim'

"""""""""""""""""
"  Code DevOps  "
"""""""""""""""""
Plugin 'airblade/vim-gitgutter'
Plugin 'sjl/gundo.vim'
Plugin 'wincent/terminus'
Plugin 'bazelbuild/vim-bazel'

"""""""""""""""""
"  Code syntax  "
"""""""""""""""""
Plugin 'lervag/vimtex'
Plugin 'jxnblk/vim-mdx-js'
Plugin 'KeitaNakamura/tex-conceal.vim'
Plugin 'google/vim-maktaba'
Plugin 'cespare/vim-toml'
Plugin 'elixir-editors/vim-elixir'

""""""""""""""""""""
"  Database Stuff  "
""""""""""""""""""""
Plugin 'tpope/vim-dadbod'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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
"
"nvim from vim
if has("nvim")
    "let g:vimtex_compiler_progname = 'nvr'
	let g:powerline_loaded=1
	let g:powerline_pycmd="py3"
	set rtp^=/usr/share/vim/vimfiles/
	" let g:powerline_pycmd="py"
endif
let g:powerline_loaded=1

""""""""""""
"  VimTex  "
""""""""""""
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
" tex-conceal
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

"setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
"TODO: Load plugins here (pathogen or vundle)
" execute pathogen#infect()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

set mouse=a

"""""""""""
"  Gundo  "
"""""""""""
map <leader>gt :GundoToggle<CR>
map <leader>gr :GundoRenderGraph<CR>
let g:gundo_prefer_python3=1

"  Pick a leader key
let mapleader=","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell
set belloff=all

" Encoding
set encoding=utf-8
" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" use intelligent indentation for C
set smartindent
set autoindent

" Whitespace
set wrap
set textwidth=80
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set expandtab
set noexpandtab
set noshiftround
set autoindent

"set autoindent noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
"nnoremap / /\v
"vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
"inoremap <F1> <ESC>:set invfullscreen<CR>a
"nnoremap <F1> :set invfullscreen<CR>
"vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
"map <leader>q gqip
"Fold around indentations
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Visualize tabs and newlines
"set listchars=tab:▸\ ,eol:¬
set listchars=tab:│\ ,trail:-
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" Uncomment this to enable by default:
"
"Split characters
" GUI
hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg
hi VertSplit guibg=bg guifg=bg

" Vim
" remove | characters in the split
" use this one instead and hide highlights after
set fillchars+=vert:\│

set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

"Make vim remember last location when editing
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:hybrid_termcolors=256
let g:hybrid_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
colorscheme gruvbox
"colorscheme elflord
"colorscheme gruvbox
hi Normal ctermbg=none
hi VertSplit ctermbg=NONE

"Make vim load html syntax in handlebars
"au BufReadPost *.handlebars set syntax=html
"au BufReadPost *.handlebars set filetype=html

"highlight current column
"set cursorcolumn
set cursorline

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Airline                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"aurora grayscale minimalist vice
"let g:airline_theme='fruit_punch'
"let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_left_sep = "\uE0B4"
let g:airline_right_sep = "\uE0B6"

" set the CN (column number) symbol:
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])

inoremap <c-x><c-k> <c-x><c-k>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Ultisnips                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Bindings for this plugin are indeed very weird so they might clash and
"  cause unexpected behaviour!! so far these are sane but from experience they
"  can go haywire!"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsUsePythonVersion=3
let g:UltiSnipsSnippetDirectories=["UltiSnips", "vim-snippets"]
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsListSnippets="<c-k>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               YouCompleteMe                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ycm_key_list_previous_completion=['<Up>']
"let g:ycm_key_list_select_completion=[]
"let g:ycm_key_list_previous_completion=[]
"let g:ycm_semantic_triggers =  {
			"\   'c' : ['->', '.'],
			"\   'objc' : ['->', '.'],
			"\   'ocaml' : ['.', '#'],
			"\   'cpp,objcpp' : ['->', '.', '::'],
			"\   'cc' : ['->', '.', '::'],
			"\   'perl' : ['->'],
			"\   'php' : ['->', '::'],
			"\   'cs,java,javascript,d,python3,python,perl6,scala,vb,elixir,go' : ['.'],
			"\   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
			"\   'ruby' : ['.', '::'],
			"\   'lua' : ['.', ':'],
			"\   'erlang' : [':'],
			"\ }
"let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
"let g:ycm_complete_in_comments=0
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
"let g:ycm_use_ultisnips_completer=1
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_autoclose_preview_window_after_insertion=1
"let g:ycm_confirm_extra_conf=0
"let g:ycm_show_diagnostics_ui = 0
"map <leader>yg :YcmCompleter GetDoc<CR>
"map <leader>yd :YcmCompleter GoToDeclaration<CR>
"map <leader>ye :YcmCompleter GoToDefinition<CR>
"map <leader>yi :YcmCompleter GoToInclude<CR>
"map <leader>yf :YcmCompleter FixIt<CR>
"map <leader>yr :YcmCompleter GoToReferences<CR>
""let g:ycm_rust_src_path='~/Programmes/Rust/rust_src/rust/src'
"let g:ycm_rust_src_path='~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
"let g:racer_cmd='/home/harryk/.cargo/bin/racer'
"let g:ycm_language_server =
"\ [
"\   {
"\     'name': 'rust',
"\     'cmdline': ['rust-analyzer'],
"\     'filetypes': ['rust'],
"\     'project_root_files': ['Cargo.toml']
"\   }
"\ ]

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
autocmd FileType javascript UltiSnipsAddFiletypes javascript-node
autocmd FileType python UltiSnipsAddFiletypes django
autocmd FileType handlebars UltiSnipsAddFiletypes html
autocmd FileType javascript.jsx UltiSnipsAddFiletypes html
autocmd FileType stylus UltiSnipsAddFiletypes css
"autocmd FileType vue UltiSnipsAddFiletypes html
let g:avoid_pre_processors=1
"autocmd FileType vue UltiSnipsAddFiletypes css
"autocmd FIleType vue UltiSnipsAddFiletypes javascript

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             NERDTree mappings                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <C-n> :NERDTreeToggle<CR>

function! s:CloseIfOnlyControlWinLeft()
	if winnr("$") != 1
		return
	endif
	if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
				\ || &buftype == 'quickfix'
		q
	endif
endfunction

augroup CloseIfOnlyControlWinLeft
	au!
	au BufEnter * call s:CloseIfOnlyControlWinLeft()
	"autocmd bufenter * if (winnr("$") == bufwinnr("__vista__")) | q | endif
	au BufEnter * if winnr("$") == 1 && vista#sidebar#IsOpen() | execute "normal! :q!\<CR>" | endif
	au BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	"au BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Syntastic                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Syntastic
""" ### Switching to Async Linting Engine!
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatusLineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list=0
"let g:syntastic_auto_loc_list=0
"let g:syntastic_check_on_open=0
"let g:syntastic_check_on_wq=0
"map <leader>st :SyntasticToggleMode<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        Asynchronous Linting Engine                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ale_fixers = {
			"\   'javascript': ['eslint'],
			"\   'rust': ['rustfmt'],
			"\}
"let g:ale_linter_aliases = {'vue': ['css', 'javascript']}
"" Set this setting in vimrc if you want to fix files automatically on save.
"" This is off by default.
"set completeopt=menu,menuone,preview,noselect,noinsert "prevent insertion bug
let g:ale_completion_enabled = 0
"let g:ale_fix_on_save = 1
"let g:ale_sign_column_always = 0
let g:ale_sign_error = '!'
let g:ale_sign_warning = ''
"let g:ale_set_highlights = 0
"let g:airline#extensions#ale#enabled = 0
let g:ale_lint_on_enter = 0
"let g:ale_open_list = 0
"let g:ale_set_quickfix = 1
""nmap <silent> <leader>ap <Plug>(ale_previous_wrap)
""nmap <silent> <leader>an <Plug>(ale_next_wrap)
"nmap <silent> <leader>af <Plug>(ale_fix)
"nmap <silent> <leader>ad <Plug>(ale_go_to_definition)
let g:ale_echo_msg_error_str = ''
let g:ale_echo_msg_warning_str = ''
let g:ale_echo_msg_format = '%severity% [%linter%]: %s'
"let g:ale_lint_on_text_changed = 'normal'
""let g:ale_set_quickfix = 1
"let g:ale_fixers.javascript = ['eslint']
"let g:ale_fixers.vue = ['eslint']
"let g:ale_fixers.cpp = ['clangtidy']
"let g:ale_fix_on_save = 1
highlight clear ALEErrorSign
highlight clear ALEWarningSign
"let g:ale_linters={
			"\'rust': ['cargo', 'rust-analyzer'], 
			"\'javascript': ['tsserver', 'eslint'], 
			"\'vue': ['eslint']
			"\}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_pattern_options = {
			\   '.*\.cc$': {'ale_enabled': 0},
			\   '.*\.cpp$': {'ale_enabled': 0},
			\   '.*\.rs$': {'ale_enabled': 1},
			\   '.*\.dart$': {'ale_enabled': 0},
			\   '.*\.js$': {'ale_enabled': 0},
			\   '.*\.ts$': {'ale_enabled': 0},
			\   '.*\.json$': {'ale_enabled': 0},
			\   '.*\.ex$': {'ale_enabled': 0},
			\   '.*\.eex$': {'ale_enabled': 0},
			\} 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:ale_linters={'rust': ['rustc']}
"let g:ale_rust_cargo_use_check=1


"Node Runtime
":set runtimepath^=~/.vim/bundle/node
":set runtimepath^=~/.vim/bundle/vim-erlang-runtime/
":set runtimepath^=~/.vim/bundle/vim-erlang-omnicomplete/


"delimitMate
"let delimitMate_expand_cr=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          FZF Configuration entry                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"fzf fuzzy search
"set rtp+=~/.vim/bundle/fzf.vim
let g:rg_command = '
			\ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
			\ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
			\ -g "!{.git,node_modules,vendor,priv,_build,target}/*" '

command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)
" Likewise, Files command with preview window

command! -bang -nargs=? -complete=dir GitFiles
			\ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

map <leader>fg :GitFiles<CR>
map <leader>ff :Files<CR>
map <leader>fc :Commands<CR>
map <leader>fm :Maps<CR>
map <leader>fb :Buffers<CR>
map <leader>fs :Snippets<CR>


"IndentationGuides
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=4
map <leader>ng :IndentGuidesToggle<CR>


"indentline conf
"":set list lcs=tab:\│\
let g:indentLine_char = '│'

"Javascript
augroup javascript_folding
	au!
	au FileType javascript setlocal foldmethod=syntax
	au FileType jsx setlocal foldmethod=syntax
augroup END
"Async js Formatting
"autocmd BufWritePost *.js AsyncRun -post=checktime eslint --fix %
"autocmd BufWritePost *.jsx AsyncRun -post=checktime eslint --fix %

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
"packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
"silent! helptags ALL

"ctrl_p ignore dirs
"let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git\|_build\|deps\|priv\|target'

"jsx in js
"let g:jsx_ext_required=0

"Vim GUI stuff
if has("gui_running")
	set guifont=Monofur\ Nerd\ Font\ Mono
	set guioptions-=m  "remove menu bar
	set guioptions-=T  "remove toolbar
	set guioptions-=r  "remove right-hand scroll bar
	set guioptions-=L  "remove left-hand scroll bar
	"colorscheme gruvbox
endif

"Statusline
"set laststatus=2
set statusline=
set statusline+=%-3.3n\   "buffer number
set statusline+=%f\       "filename
set statusline+=%h%m%r%w  "status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] "file type
set statusline+=%=        "right align remainder
set statusline+=0x%-8B    "character value
set statusline+=%-14(%l,%c%V%) "line, character
set statusline+=%<%P            "file position

"GoyoToggle
map <leader>gy :Goyo<CR>

"Vim-Minimap
"let g:minimap_toggle='<leader>mt'
"let g:minimap_highlight='QuickFixLine'

"alchemist elixir doc
map <leader>ef :call alchemist#exdef()<CR>
map <leader>mf :MixFormat<CR>
let g:alchemist#elixir_erlang_src='~/.local/share/elixir'

"Interactive GQL window config
"map <leader>gq :GQLGraphiQL<CR>
"map <leader>ge :GQLExit<CR>
"map <leader>gi :GQLExecuteUnderCursor<CR>
"map <leader>gr :GQLRunInteractiveQuery<CR>
"let g:gql_endpoint = "localhost:4000/graphql"

"""""""""""""""
"  GitGutter  "
"""""""""""""""
let g:gitgutter_sign_added='┃'
let g:gitgutter_sign_modified='┃'
let g:gitgutter_sign_removed='◢'
let g:gitgutter_sign_removed_first_line='◥'
let g:gitgutter_sign_modified_removed='◢'

set shortmess+=c
"let g:lsc_server_commands = {'dart': 'dart_language_server', 'rust': 'rust-analyzer', 'c': 'clangd', 'c++': 'clangd'}
"let g:lsc_server_commands = {'dart': 'dart_language_server', 'c': 'clangd', 'c++': 'clangd'}
"let g:lsc_server_commands = {'dart': 'dart_language_server'}

"""""""""""
"  Rust   "
"""""""""""

"let g:racer_cmd = "/home/harryk/.cargo/bin/racer"
"let g:racer_experimental_completer = 1
"au FileType rust nmap <leader>rf <Plug>(rust-def)
"au FileType rust nmap <leader>rs <Plug>(rust-def-split)
"au FileType rust nmap <leader>rx <Plug>(rust-def-vertical)
"au FileType rust nmap <leader>rd <Plug>(rust-doc)
au FileType rust nmap <leader>rr :RustRun<CR>
au FileType rust nmap <leader>rs :CocCommand rust-analyzer.syntaxTree<CR>
au FileType rust nmap <leader>rg :CocCommand rust-analyzer.collectGarbage<CR>
"au FileType rust nmap <leader>rs <Plug>(rust-def-split)
"au FileType rust nmap <leader>rx <Plug>(rust-def-vertical)
"au FileType rust nmap <leader>rd <Plug>(rust-doc)

""""""""""""""
"  Prettier  "
""""""""""""""

"let g:prettier#exec_cmd_async = 1
"nmap <Leader>py <Plug>(Prettier)
"let g:prettier#autoformat = 0
"let g:prettier#quickfix_enabled = 0
"autocmd BufWritePre *.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.yaml,*.html PrettierAsync
"autocmd BufWritePre,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
"
"
"""""""""""""""""""""""""
"  Conquer on Complete  "
"""""""""""""""""""""""""
nmap <leader>cd <Plug>(coc-definition)
"nmap <leader>cy <Plug>(coc-type-definition)
nmap <leader>cp <Plug>(coc-implementation)
nmap <leader>cr <Plug>(coc-references)
nmap <leader>ce <Plug>(coc-codelens-action)
nmap <leader>ap <Plug>(coc-diagnostic-next-error)
nmap <leader>an <Plug>(coc-diagnostic-previous-error)

autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


"""""""""""
"  Bazel  "
"""""""""""
nmap <leader>bb :Bazel build src/build-all<CR>
nmap <leader>br :Bazel run   src/build-all<CR>
nmap <leader>bt :Bazel test --test_output all --verbose_failures test/main-test <CR>
nmap <leader>bc :Bazel clean --async<CR>

"""""""""""""""""""""
"  Language Server  "
"""""""""""""""""""""
"nmap <leader>lr  :LSClientFindReferences<CR>
"nmap <leader>lrh :LSClientShowHover<CR>
"nmap <leader>li  :LSClientFindImplementations<CR>
"nmap <leader>ld  :LSClientGoToDefinition<CR>
"nmap <leader>lds :LSClientGoToDefinitionSplit<CR>

"""""""""""""""
"  Vim-vista  "
"""""""""""""""
" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
"let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'coc'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'coc',
  \ 'python': 'coc',
  \ 'rust': 'ctags',
  \ 'vim': 'ctags',
  \ 'c': 'coc',
  \ 'markdown': 'ctags',
  \ 'elixir': 'coc'
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:100%']
" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1
let g:vista_sidebar_width = 37

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
"let g:vista#renderer#icons = {
"\   "function": "\uf794",
"\   "variable": "\uf71b",
"\  }

map <silent> <C-v> :Vista!!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Terminal integration                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <silent> <C-t> :belowright term<CR>

""""""""""""""""""
"  Vim markdown  "
""""""""""""""""""
"Disable weird underscore highlighting
"syn match markdownIgnore "\$x_i\$"
hi link markdownError Normal

function FindCursorPopUp()
	let radius = get(a:000, 0, 2)
	let srow = screenrow()
	let scol = screencol()
	" it's necessary to test entire rect, as some popup might be quite small
	for r in range(srow - radius, srow + radius)
		for c in range(scol - radius, scol + radius)
			let winid = popup_locate(r, c)
			if winid != 0
				return winid
			endif
		endfor
	endfor

	return 0
endfunction

function ScrollPopUp(down)
	let winid = FindCursorPopUp()
	if winid == 0
		return 0
	endif

	let pp = popup_getpos(winid)
	call popup_setoptions( winid,
				\ {'firstline' : pp.firstline + ( a:down ? 1 : -1 ) } )

	return 1
endfunction
nnoremap <expr> <c-d> ScrollPopUp(1) ? '<esc>' : '<c-d>'
nnoremap <expr> <c-a> ScrollPopUp(0) ? '<esc>' : '<c-a>'
