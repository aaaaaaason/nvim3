return {
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme nord]])
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme nord]])
		end,
	},
	{
		"shaunsingh/nord.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme nord]])
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme night]])
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme kanagawa-dragon]])
		end,
	},
	{
		"cocopon/iceberg.vim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme iceberg]])
		end,
	},
	{
		"whatyouhide/vim-gotham",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- vim.g.gotham_airline_emphasised_insert = 0
			-- vim.cmd([[colorscheme gotham256]])
		end,
	},
	{
		"lifepillar/vim-solarized8",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- vim.cmd([[colorscheme solarized8]])
		end,
	},
	{
		"Shatur/neovim-ayu",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- vim.cmd([[colorscheme ayu]])
		end,
	},
	{
		"lunarvim/darkplus.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme darkplus]])
		end,
	},
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme solarized-osaka-storm]])
		end,
	},
	{
		"projekt0n/github-nvim-theme",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- require("github-theme").setup({
			-- 	-- ...
			-- })
			-- vim.cmd("colorscheme github_dark_dimmed")
		end,
	},
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-buffer" },
	{ "L3MON4D3/LuaSnip" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "tpope/vim-fugitive" },
}
