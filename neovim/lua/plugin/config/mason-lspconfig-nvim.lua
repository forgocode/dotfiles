--**********************************************************
--* Author           : forgocode
--* Email            : forgocode@163.com
--* Github           : https://github.com/forgocode
--* Create Time      : 2023-06-08 13:11
--* FileName         : mason-lspconfig.lua
--* Description      :
--**********************************************************

require("mason-lspconfig").setup({
	ensure_installed = { "gopls", "lua_ls", "rust_analyzer", "bashls","pylsp" },
})
