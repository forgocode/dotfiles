--**********************************************************
--* Author           : forgocode
--* Email            : forgocode@163.com
--* Github           : https://github.com/forgocode
--* Create Time      : 2023-06-08 13:11
--* FileName         : auto-save.lua
--* Description      :
--**********************************************************
--
require("auto-save").setup({})

-- <leader>n 用于切换是否启用自动保存
vim.keymapping.smap("n", "<leader>n", "<cmd>ASToggle<CR>", vim.keymapping.opts)
