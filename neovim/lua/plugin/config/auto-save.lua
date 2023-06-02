require("auto-save").setup({})

-- <leader>n 用于切换是否启用自动保存
vim.keymapping.smap("n", "<leader>n", "<cmd>ASToggle<CR>", vim.keymapping.opts)
