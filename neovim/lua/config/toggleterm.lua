local Toggleterm = require("toggleterm")
Toggleterm.setup({
	-- 默认新终端为插入模式
	start_in_insert = true,
	-- 新终端大小为
	size = 6,
	on_open = function ()
		vim.cmd("setlocal nospell")
	end
})

local Terminal = require("toggleterm.terminal").Terminal

local function deleteEscMap()
	vim.keymapping.dmap("t", "<Esc>")
end

local floatTerm = Terminal:new({
	hidden = true,
	direction = "float",
	float_opts = {
		border = "double"
	},
	on_open = function(term)
		deleteEscMap()
		vim.keymapping.bsmap(term.bufnr, "t", "<Esc>", "<C-\\><C-n>:close<CR>",vim.keymapping.opts)
	end,
	on_close = function()
		vim.keymapping.smap("t", "<Esc>", "<C-\\><C-n>", vim.keymapping.opts)
	end
})

local lazygitTerm = Terminal:new({
	cmd = "lazygit",
	dir = "git_dir",
	hidden = true,
	direction = "float",
	float_opts = {
		border = "double"
	},
	on_open = function(term)
		deleteEscMap()
		vim.keymapping.bsmap(term.bufnr, "i", "q", "<cmd>close<CR>",vim.keymapping.opts)
	end,
	on_close = function()
		vim.keymapping.smap("t", "<Esc>", "<C-\\><C-n>", vim.keymapping.opts)
	end
})

Toggleterm.float_toggle = function ()
	floatTerm:toggle()
end

Toggleterm.lazygit_toggle = function ()
	lazygitTerm:toggle()
end


vim.keymapping.smap("t", "<Esc>", "<C-\\><C-n>", vim.keymapping.opts)
--打开浮动终端
vim.keymapping.smap("n", "<leader>tf", "<cmd>lua require('toggleterm').float_toggle()<CR>", vim.keymapping.opts)
-- 打开lazygit终端
vim.keymapping.smap("n", "<leader>tg", "<cmd>lua require('toggleterm').lazygit_toggle()<CR>", vim.keymapping.opts)
-- 打开普通终端
vim.keymapping.smap("n", "<leader>tt", "<cmd>exe v:count.'ToggleTerm'<CR>", vim.keymapping.opts)
-- 打开或者关闭全部终端
-- 不生效
vim.keymapping.smap("n", "<leader>ta", "<cmd>ToggleTermToggleAll<CR>", vim.keymapping.opts)
