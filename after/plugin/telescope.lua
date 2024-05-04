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
-- vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
-- find grep
-- vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
-- find buffers
-- vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
-- find help
-- vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- list commit history for current directory
vim.keymap.set("n", "<leader>gdc", builtin.git_commits, {})

-- list commit history for current buffer 
vim.keymap.set("n", "<leader>gbc", builtin.git_bcommits, {})

-- Lists LSP references for word under the cursor, jumps to reference on
-- `<cr>`
vim.keymap.set("n", "<leader>lr", builtin.lsp_references, {})

-- Lists LSP incoming calls for word under the cursor, jumps to reference on
-- `<cr>`
vim.keymap.set("n", "<leader>lic", builtin.lsp_incoming_calls, {})

-- Lists LSP references for word under the cursor, jumps to reference on
-- `<cr>`
vim.keymap.set("n", "<leader>loc", builtin.lsp_outgoing_calls, {})

-- Goto the definition of the word under the cursor if there's only one,
-- otherwise show all options in Telescope
vim.keymap.set("n", "<leader>ld", builtin.lsp_definitions, {})

-- Goto the definition of the word under the cursor if there's only one,
-- otherwise show all options in Telescope
vim.keymap.set("n", "<leader>ltd", builtin.lsp_type_definitions, {})

-- Goto the implementation of the word under the cursor if there's only one,
-- otherwise show all options in Telescope
vim.keymap.set("n", "<leader>li", builtin.lsp_implementations, {})
