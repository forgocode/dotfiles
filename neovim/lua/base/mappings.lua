vim.keymapping.smap("n", "H", "^", vim.keymapping.opts)
vim.keymapping.smap("n", "L", "$", vim.keymapping.opts)
vim.keymapping.smap("i", "jj", "<Esc>", vim.keymapping.opts)

vim.keymapping.smap("v", "H", "^", vim.keymapping.opts)
vim.keymapping.smap("v", "L", "$", vim.keymapping.opts)

vim.keymapping.smap("n", "<C-u>", "15k", vim.keymapping.opts)
vim.keymapping.smap("n", "<C-d>", "15j", vim.keymapping.opts)

--插入模式的上下移动
vim.keymapping.smap("i", "<A-k>", "<up>", vim.keymapping.opts)
vim.keymapping.smap("i", "<A-j>", "<down>", vim.keymapping.opts)
vim.keymapping.smap("i", "<A-h>", "<left>", vim.keymapping.opts)
vim.keymapping.smap("i", "<A-l>", "<right>", vim.keymapping.opts)

-- 分屏
vim.keymapping.smap("n", "sv", "<cmd>vsp<CR>", vim.keymapping.opts)
vim.keymapping.smap("n", "sh", "<cmd>sp<CR>", vim.keymapping.opts)
vim.keymapping.smap("n", "sc", "<C-w>c", vim.keymapping.opts)
vim.keymapping.smap("n", "so", "<C-w>o", vim.keymapping.opts)

-- 分屏模式的移动
vim.keymapping.smap("n", "<A-k>", "<C-w>k", vim.keymapping.opts)
vim.keymapping.smap("n", "<A-j>", "<C-w>j", vim.keymapping.opts)
vim.keymapping.smap("n", "<A-h>", "<C-w>h", vim.keymapping.opts)
vim.keymapping.smap("n", "<A-l>", "<C-w>l", vim.keymapping.opts)

vim.keymapping.smap("n", "gvG", "ggvG=", vim.keymapping.opts)
