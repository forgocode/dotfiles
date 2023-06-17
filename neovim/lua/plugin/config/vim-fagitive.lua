--**********************************************************
--* Author           : forgocode
--* Email            : forgocode@163.com
--* Github           : https://github.com/forgocode
--* Create Time      : 2023-06-08 13:11
--* FileName         : vim-fagitive.lua
--* Description      :
--**********************************************************

-- cc 进入commit模式
vim.keymap.set("n", "<leader>g", ":Git<CR>", vim.keymapping.opts)
vim.keymap.set("n", "<leader>gpl", ":Git pull<CR>", vim.keymapping.opts)
vim.keymap.set("n", "<leader>gps", ":Git push<CR>", vim.keymapping.opts)
vim.keymap.set("n", "<leader>gl", ":Git log<CR>", vim.keymapping.opts)
vim.keymap.set("n", "<leader>gd", ":Git diff<CR>", vim.keymapping.opts)
