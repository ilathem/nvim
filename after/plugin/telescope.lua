local builtin = require("telescope.builtin")

-- space+p+f opens telescope (pf stands for project files)
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})

-- Ctrl+p is for git files in particular (is faster)
vim.keymap.set("n", "<C-p>", builtin.git_files, {})

-- space+p+s for project search
vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})

-- find workspace symbols
vim.keymap.set("n", "<leader>fws", builtin.lsp_workspace_symbols, {})

-- find document symbols
vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, {})

-- these are the default keybinds
-- find files
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
-- find grep
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
-- find buffers
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
-- find help
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
