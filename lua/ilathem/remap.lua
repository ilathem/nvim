-- change leader key to space (leader key is to enable another layer of keybinds)
vim.g.mapleader = " "

-- for controlling the nvim windows
vim.keymap.set("n", "<leader>w", "<C-w>")

vim.keymap.set("n", "<leader>b", "<cmd>:silent !brave-nightly %<CR>")

-- git add all files
vim.keymap.set("n", "<leader>ga", "<cmd>:G add .<CR>")

-- git commit all files with message
vim.keymap.set("n", "<leader>gc", function()
    vim.ui.input({prompt = "Commit message: "}, function(input)
        local command = "G commit -m '" .. input .. "'";
        vim.cmd("G add .")
        vim.cmd(command)
    end)
end)

-- git status
vim.keymap.set("n", "<leader>gs", function()
    vim.cmd("G status")
end)

-- git push
vim.keymap.set("n", "<leader>gp", "<cmd>:G push<CR>")

-- Primeagen remaps:

-- In normal mode, pressing space+p+v will run :Ex, which opens the NetRW screen
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlighted text like Alt+Arrow key on IDE's
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append line below to the, keep cursor in same place
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in the middle when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep search terms in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste over highlighted word, moving highlighted word to void register
-- instead of adding it to register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

-- don't go to EX mode ever
vim.keymap.set("n", "Q", "<nop>")

-- allows you to switch projects (when usign tmux)
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- format current buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- start replacing the word you are on throughout the entire buffer
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make the current file executable within the file (instead of within bash)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
