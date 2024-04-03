return {
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
	-- {
	--     "craftzdog/solarized-osaka.nvim",
	--     lazy = false,
	--     priority = 1000,
	--     opts = {},
	--     config = function()
	--         -- load the colorscheme here
	--         vim.cmd([[colorscheme solarized-osaka]])
	--     end,
	-- },
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
