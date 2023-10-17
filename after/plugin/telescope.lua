local builtin = require('telescope.builtin')
-- space+p+f opens telescope (pf stands for project files)
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Ctrl+p is for git files in particular (is faster) 
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- space+p+s for project search
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
