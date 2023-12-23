-- sets that will further customize the nvim layout

-- vim.opt === 'set' in vimscript
-- vim.g === 'let' in vimscript

-- highlight the current line
vim.opt.cursorline = true;

-- add in relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 space indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- self explanatory
vim.opt.smartindent = true

-- no line-wrapping
vim.opt.wrap = false

-- no backups, just use a long-running undo tree file instead
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- highlight what you are searching for as you type (dynamic)
vim.opt.incsearch = true

-- pretty colors
vim.opt.termguicolors = true

-- keep 8 lines away from top or bottom as scrolling
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- 80 column limit
vim.opt.colorcolumn = "80"

-- space is the leader key
vim.g.mapleader = " "

