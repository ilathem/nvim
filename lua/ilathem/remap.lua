-- change leader key to space (leader key is to enable another layer of keybinds)
vim.g.mapleader = " "

-- In normal mode, pressing space+p+v will run :Ex, which opens the NetRW screen
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
