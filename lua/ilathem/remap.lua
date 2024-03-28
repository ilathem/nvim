-- cSpell:disable
-- ctrl+enter in insert mode continues onto a blank line (instead of inserting
-- comment at the beginning if coming from a comment line)
vim.keymap.set("i", "<C-CR>", "<Esc>o<Esc>0Di")

-- change leader key to space (leader key is to enable another layer of keybinds)
vim.g.mapleader = " "

-- for controlling the nvim windows
vim.keymap.set("n", "<leader>w", "<C-w>")

-- open current file in brave browser (arch only)
vim.keymap.set("n", "<leader>b", "<cmd>:silent !brave-nightly %<CR>")

-- git commit and push all files with message
vim.keymap.set("n", "<leader>gg", function()
    vim.ui.input({prompt = "Commit message: "}, function(input)
        local command = "silent !git commit -m '" .. input .. "' --quiet";
        vim.cmd("silent !git add .")
        vim.cmd(command)
        vim.cmd("silent !git push --quiet")
        vim.cmd("echo 'Success! => " .. input .. "'");
    end)
end)

-- git status is in fugitive.lua

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

-- put from system clipboard - v from ctrl v 
vim.keymap.set({"n", "v"}, "<leader>v", [["+p]])

-- next greatest remap ever : asbjornHaland
-- yank to system clipboard
-- c from ctrl c
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>c", [["+y]])
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

-- create a symbolic link for the current .sh file to ~/bin
-- so that we can call it from anywhere because ~/bin is in the path
vim.keymap.set("n", "<leader>z", "<cmd>!ln -s %:t ~/bin/%:t:r<CR>" )

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
