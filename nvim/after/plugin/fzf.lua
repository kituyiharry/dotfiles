--vim.keymap.set("n", "<leader>fg", ":GitFiles<CR>")
--vim.keymap.set("n", "<leader>ff", ":Files<CR>")

--" An action can be a reference to a function that processes selected lines
-- Add a way to set crtl-q to select files into the quickfix
vim.cmd([[
    function! s:build_quickfix_list(lines)
      call setqflist(map(copy(a:lines), '{ "filename": v:val, "lnum": v:val, "end_lnum": v:val }'))
      copen
      cc
    endfunction

    let g:fzf_action = {
      \ 'ctrl-q': function('s:build_quickfix_list'),
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }

]])

vim.keymap.set('n', '<leader>ff', ":Files<CR>", {})
vim.keymap.set('n', '<leader>fg', ":GitFiles<CR>", {})
vim.keymap.set("n", "<leader>fr", ":Rg<CR>")
vim.keymap.set("n", "<leader>fc", ":Commands<CR>")
vim.keymap.set("n", "<leader>fm", ":Maps<CR>")
vim.keymap.set("n", "<leader>fb", ":Buffers<CR>")
vim.keymap.set("n", "<leader>fs", ":Snippets<CR>")
vim.keymap.set("n", "<leader>ar", ":Ag<CR>")
