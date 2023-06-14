-- **********************************************************
-- * Author           : forgocode
-- * Email            : forgocode@163.com
-- * Github           : https://github.com/forgocode
-- * Create Time      : 2023-06-14 10:58
-- * FileName         : lspsaga.lua
-- * Description      :
-- **********************************************************

require("lspsaga").setup({
	preview = {
		lines_above = 0,
		lines_below = 10,
	},
	scroll_preview = {
		scroll_down = "<C-f>",
		scroll_up = "<C-b>",
	},
	request_timeout = 2000,

	-- See Customizing Lspsaga's Appearance
	ui = {
		keys = {
			quit = { "q", "<ESC>" },
		},
	},

	-- For default options for each command, see below
	finder = {
		max_height = 0.5,
		min_width = 30,
		force_max_height = false,
		keys = {
			jump_to = "p",
			expand_or_jump = "o",
			vsplit = "s",
			split = "i",
			tabe = "t",
			tabnew = "r",
			quit = { "q", "<ESC>" },
			close_in_preview = "<ESC>",
		},
	},
	code_action = { ... },
	-- etc.
	outline = {
		keys = {
			quit = { "q", "<ESC>" },
		},
	},
})
