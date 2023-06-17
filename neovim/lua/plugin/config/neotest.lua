--**********************************************************
--* Author           : forgocode
--* Email            : forgocode@163.com
--* Github           : https://github.com/forgocode
--* Create Time      : 2023-06-08 13:11
--* FileName         : neotest_ns.lua
--* Description      :
--**********************************************************

local neotest_ns = vim.api.nvim_create_namespace("neotest")
vim.diagnostic.config({
	virtual_text = {
		format = function(diagnostic)
			local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
			return message
		end,
	},
}, neotest_ns)

require("neotest").setup({
	-- your neotest config here
	adapters = {
		require("neotest-go"),
	},
})
