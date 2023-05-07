vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	--包管理插件
	use 'wbthomason/packer.nvim'

	--theme 主题
	use {'navarasu/onedark.nvim'}
	use { 'projekt0n/github-nvim-theme'}


	-- 大纲树
	use {'nvim-tree/nvim-tree.lua',
		requires = {'nvim-tree/nvim-web-devicons'}, -- optional, for file icons 
		tag = 'nightly',-- optional, updated every week. (see issue #1193)
		config = function() require("config.nvim-tree") end}

	-- 代码颜色高亮
	use {'nvim-treesitter/nvim-treesitter',
		config = function() require("config.nvim-treesitter")end}

	-- 括号自动补全
	use {'windwp/nvim-autopairs',
		config = function() require("config.nvim-autopairs")end}

	-- 代码自动补全
	use{'hrsh7th/nvim-cmp',
		requires={ 	{"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
			{"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
			{"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
			{"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
			{"hrsh7th/cmp-path"}, -- 路径补全
			{"hrsh7th/cmp-buffer"}, -- 缓冲区补全
			{"hrsh7th/cmp-cmdline"}, -- 命令补全
			{"f3fora/cmp-spell"}, -- 拼写建议
			{"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
			{"lukas-reineke/cmp-under-comparator"} -- 让补全结果的排序更加智能}}
		},
		config = function() require("config.nvim-cmp")end}

	--自动安装lsp服务
	use {"williamboman/nvim-lsp-installer",
		config = function() require("config.nvim-lsp-installer") end}

	--- lsp 配置
	use {"neovim/nvim-lspconfig",
		config = function() require("config.nvim-lspconfig")end}

	-- telescope 
	use {"nvim-telescope/telescope.nvim",
		tag = '0.1.0',
		requires = {{"nvim-lua/plenary.nvim"}},
		config = function() require("config.telescope") end}

	-- 状态栏
	use {"windwp/windline.nvim",
		config = function() require("config.windline") end}

	--状态栏需要的插件，用于显示git信息
	use{"lewis6991/gitsigns.nvim",
		config = function() require("config.gitsigns")end}
	-- bufferline
	use {'akinsho/bufferline.nvim',
		tag = "v2.*",
		requires = {'kyazdani42/nvim-web-devicons', "famiu/bufdelete.nvim"},
		config = function() require("config.bufferline")end}

	-- which-key
	use {"folke/which-key.nvim",
		config = function() require("config.which-key")end}

	-- hop 全局查找
	use{"phaazon/hop.nvim",
		branch = 'v2',
		config = function()require("config.hop")end}

	-- 终端插件
	use{"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()require("config.toggleterm")end}

	-- todo插件
	use{"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function() require("config.todo-comments")end}

	-- 自动保存插件
	use{"Pocco81/auto-save.nvim",
		config = function() require("config.auto-save")end}


	--代码注释
	use{"b3nj5m1n/kommentary",
		config = function ()require("config.kommentary")end}

	--pdf 预览
	-- install without yarn or npm
	use{"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
		config = function()require("config.markdown-preview")end,
		ft = {"markdown"}
	}
	--右侧大纲预览
	use{"liuchengxu/vista.vim",
		config = function()require("config.vista-nvim")end}
end)
