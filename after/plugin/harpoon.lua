local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- add current file to harpoon
vim.keymap.set("n", "<leader>a", mark.add_file)
-- open the UI
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)


-- basic functions for navigating to various harpoon marks
vim.keymap.set("n", "<D-j>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<D-k>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<D-l>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<D-;>", function() ui.nav_file(4) end)



