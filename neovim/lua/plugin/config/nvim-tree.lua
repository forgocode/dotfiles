require("nvim-tree").setup({})

-- nvim-tree, 打开文件列表，打开当前文件所在的位置:q
vim.keymapping.smap("n", "<leader>1", "<cmd>NvimTreeToggle<CR>", vim.keymapping.opts)
vim.keymapping.smap("n", "<leader>fc", "<cmd>NvimTreeFindFile<CR>", vim.keymapping.opts)
