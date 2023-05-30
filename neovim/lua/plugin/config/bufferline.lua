require("bufferline").setup({
	options = {
		numbers = "ordinal",
		offsets = {
			filetype = "NvimTree",
			text = "File Explorer",
			hightlight = "Directory",
			text_align = "left"
		},
	},
})

-- 关闭当前bufferline
vim.keymapping.smap("n", "<C-q>", "<cmd>Bdelete!<CR>", vim.keymapping.opts)
-- 切换左侧缓冲区
vim.keymapping.smap("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>", vim.keymapping.opts)
-- 切换右侧缓冲区
vim.keymapping.smap("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>", vim.keymapping.opts)
