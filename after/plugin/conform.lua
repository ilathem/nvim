require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    javascript = { { "prettierd", "prettier" } },
    css = { { "prettierd", "prettier" } }
  },
})

-- keymap short for "format document"
vim.keymap.set("n", "<leader>fd", function()
    require("conform").format()
  end
)

-- vim.api.nvim_create_autocmd({"BufWritePre", "BufReadPost"}, {
--   pattern = "*",
--   callback = function(args)
--     require("conform").format({ bufnr = args.buf })
--   end,
-- })
