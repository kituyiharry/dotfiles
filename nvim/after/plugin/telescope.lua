local builtin = require('telescope.builtin')
require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      "node_modules",
      "%.o",
      "%.a",
      "%.d",
    }
  }
}
--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fi', function()
  k = vim.fn.input("Grep > ") 
  if f ~= "" then
    builtin.grep_string({ search = f })
  end
end)

-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
