require("telescope").setup()
-- find file
vim.keymapping.smap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", vim.keymapping.opts)
-- find word
vim.keymapping.smap("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", vim.keymapping.opts)
-- oldfiles
vim.keymapping.smap("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", vim.keymapping.opts)
-- find help
vim.keymapping.smap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", vim.keymapping.opts)
-- find mark
vim.keymapping.smap("n", "<leader>fm", "<cmd>Telescope marks<CR>", vim.keymapping.opts)
