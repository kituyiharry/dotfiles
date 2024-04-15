vim.keymap.set("n", "<leader>fs", ":Snippets<CR>")
vim.keymap.set("n", "<leader>gn", ":GitGutterNextHunk<CR>")
vim.keymap.set("n", "<leader>gp", ":GitGutterPrevHunk<CR>")
vim.keymap.set("n", "<leader>gr", ":GitGutterPreviewHunk<CR>")

vim.cmd [[ 
  let g:gitgutter_floating_window_options['border'] = 'rounded' 
]]
