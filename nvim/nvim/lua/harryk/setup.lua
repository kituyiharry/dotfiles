function SetupUltisnips()
  -- Ultisnips
  vim.g.UltiSnipsUsePythonVersion=3
  vim.g.UltiSnipsExpandTrigger="<c-a>"
  vim.g.UltiSnipsJumpForwardTrigger="<c-F>"
  vim.g.UltiSnipsJumpBackwardTrigger="<c-B>"
  vim.g.UltiSnipsListSnippets="<c-t>"
  -- If you want :UltiSnipsEdit to split your window.
  vim.g.UltiSnipsEditSplit="vertical"
  vim.cmd [[
  let g:UltiSnipsSnippetDirectories=["Ultisnips", "vim-snippets", "~/.vim/bundle/Ultisnips", "~/.vim/bundle/vim-snippets"]
  ]]
end


function SetupAirline(theme)
  th = theme or 'fruit_punch'
  vim.g.airline_theme=th
  vim.g.airline_powerline_fonts=1
  -- Enable the list of buffers
  -- Show just the filename
  vim.g.airline_left_sep=''
  vim.g.airline_right_sep=''
  -- set the CN (column number) symbol:
  vim.cmd([[
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])
  let g:airline#extensions#whitespace#enabled = 0
  ]])
end



function SetupGitGutter()
  vim.g.gitgutter_sign_added = '┃'
  vim.g.gitgutter_sign_modified = '┃'
  vim.g.gitgutter_sign_removed = '◢'
  vim.g.gitgutter_sign_removed_first_line = '◥'
  vim.g.gitgutter_sign_modified_removed = '◢'
  vim.g.gitgutter_set_sign_backgrounds = 1
end


function SetupIndentline()
  vim.g.indentLine_char = '│'
  vim.g.indent_guides_enable_on_vim_startup = 0
  vim.g.indent_guides_auto_colors = 0
end


function Setup(config)
  SetupIndentline()
  SetupGitGutter()
  SetupAirline(config.theme)
  SetupUltisnips()
end

Setup({})

