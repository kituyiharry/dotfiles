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
SetupUltisnips()
