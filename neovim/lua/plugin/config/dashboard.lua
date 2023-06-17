require("dashboard").setup({
	-- config
	theme = "hyper", --  theme is doom and hyper default is hyper
	shortcut_type = "letter", --  shorcut type 'letter' or 'number'
	config = {
		week_header = {
			enable = true,
			concat = "要保持好心情哦😎",
			append = { "Welcome to forgocode's neovim. Enjoy it :) 😄" },
		},
		disable_move = true,
		shortcut = {
			{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
			{
				icon = " ",
				icon_hl = "@variable",
				desc = "Files",
				group = "Label",
				action = "Telescope find_files",
				key = "ff",
			},
			{
				desc = " Apps",
				group = "DiagnosticHint",
				action = "Telescope app",
				key = "a",
			},
			{
				desc = " dotfiles",
				group = "Number",
				action = "Telescope dotfiles",
				key = "d",
			},
		},
		packages = { enable = true }, -- show how many plugins neovim loaded
		-- limit how many projects list, action when you press key or enter it will run this action.
		-- action can be a functino type, e.g.
		-- action = func(path) vim.cmd('Telescope find_files cwd=' .. path) end
		project = { enable = true, limit = 8, icon = "your icon", label = "", action = "Telescope find_files cwd=" },
		mru = { limit = 10, icon = "your icon", label = "" },
		footer = {}, -- footer
	},
})
