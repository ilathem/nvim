local builtin = require("telescope.builtin")
-- space+p+f opens telescope (pf stands for project files)
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
-- Ctrl+p is for git files in particular (is faster)
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
-- space+p+s for project search
vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})

-- these are the default keybinds
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
