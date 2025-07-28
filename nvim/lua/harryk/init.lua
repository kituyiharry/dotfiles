-- print("Hallo from harryk")
local should_profile = os.getenv("NVIM_PROFILE")

local function toggle_profile()
  local prof = require("profile")
  if prof.is_recording() then
    prof.stop()
    --vim.ui.input({ prompt = "Save profile to:", completion = "file", default = "profile.json" }, function(filename)
      --if filename then
        vim.cmd [[ :echom "done profiling!" ]]
        prof.export("/Users/harrykwakuloba/.config/nvim/profile.prof")
        --vim.notify(string.format("Wrote %s", filename))
      --end
    --end)
  else
    prof.start("*")
  end
end


if should_profile then
  vim.cmd [[ :echom "profiling...." ]]
  require("profile").instrument_autocmds()
  if should_profile:lower():match("^start") then
    require("profile").start("*")
    
    local timer = vim.uv.new_timer()
    local timer2 = vim.loop.new_timer()
    timer2:start(10000, 0, vim.schedule_wrap(function()
      toggle_profile()
      vim.api.nvim_command('echomsg "completing"')
    end))
    timer:start(10000, 0, vim.schedule_wrap(function()
      toggle_profile()
      vim.api.nvim_command('echomsg "completing"')
    end))

  else
    require("profile").instrument("*")
  end
end


-- Use F1 key to stop profiling
vim.keymap.set("", "<f1>", toggle_profile)

--require('luasnip.loaders.from_snipmate').lazy_load()

vim.cmd([[

  set nocompatible
  filetype plugin on
  filetype plugin indent on
  filetype on
  set relativenumber
  syntax on
  syntax enable

  " set ttymouse=xterm2

  "Security
  set modelines=0

  set updatetime=250

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
  " set termencoding=utf-8
  " set tenc=utf-8
  "use intelligent indentation for C
  set smartindent
  set autoindent

  "Whitespace
  set wrap
  set textwidth=80
  set formatoptions+=tcqrn1
  set formatprg=par\ jw76
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
  set expandtab
  set shiftround
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
  set statusline=
  set statusline+=%f\       "filename
  " set statusline+=%h%m%r%w  "status flags
  set statusline+=\[%{strlen(&ft)?&ft:'none'}] "file type
  set statusline+=%=        "right align remainder


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

  "Textmate holdouts

  "Formatting
  "map <leader>q gqip
  "Fold around indentations
  set foldmethod=indent
  set foldnestmax=10
  set nofoldenable
  set foldlevel=2
  set foldcolumn=2

  "Visualize tabs and newlines
  "set listchars=tab:▸\ ,eol:¬
  set listchars=tab:│\ ,trail:-
  "let g:indentLine_char_list = ['|', '¦', '┆', '┊']
  "Uncomment this to enable by default:
  "
  "Remove trailing whitespaces
  " autocmd BufWritePre * :%s/\s\+$//e
  autocmd FileType sml set indentexpr=

  "
  "Split characters
  "GUI
  " hi LineNr guibg=bg

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

  "highlight current column
  set colorcolumn=80
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

  set signcolumn=yes

  set concealcursor-=n

  " hide winseparator highlight
  highlight WinSeparator guibg=None ctermbg=None
  highlight FloatBorder guibg=None ctermbg=None

  function! GetSynStack()
		for id in synstack(line("."), col("."))
		  echo synIDattr(id, "name")
		endfor
  endfunction

  " nmap <leader>sp :call <SID>SynStack()<CR>
  nmap <leader>sp :call g:GetSynStack()<CR>
  nmap <leader>sb :windo set scrollbind!<CR>

  let g:vista_sidebar_width=50


]])

