require("dashboard").setup({
	-- config
	theme = "hyper", --  theme is doom and hyper default is hyper
	shortcut_type = "letter", --  shorcut type 'letter' or 'number'
	config = {
		week_header = {
			enable = true,
			concat = "要保持好心情哦😎",
			-- append = { "Welcome to forgocode's neovim. Enjoy it :) 😄" },
		},
		disable_move = false,
		shortcut = {
			{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
			{
				desc = "Mason",
				group = "Label",
				action = "Mason",
				key = "m",
			},
			{
				desc = " dotfiles",
				group = "Number",
				action = "Telescope find_files cmd=~/dotfiles/",
				key = "d",
			},
			{
				desc = " Quit",
				group = "Special",
				action = ":q",
				key = "q",
			},
		},
		packages = { enable = false }, -- show how many plugins neovim loaded
		-- limit how many projects list, action when you press key or enter it will run this action.
		-- action can be a functino type, e.g.
		-- action = func(path) vim.cmd('Telescope find_files cwd=' .. path) end
		project = {
			enable = true,
			limit = 8,
			icon = "Recently open session",
			label = "",
			action = "Telescope find_files cwd=",
		},
		mru = { limit = 8, icon = "Recently Open Files", label = "" },
		footer = { "Welcome to forgocode's neovim. Enjoy it :) 😄" }, -- footer
	},
})
