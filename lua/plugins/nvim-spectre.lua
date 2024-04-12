return {
	"nvim-pack/nvim-spectre",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		-- local wk = require("which-key")
		-- wk.register({
		-- 	s = {
		-- 		name = "+spectre", -- optional group name
		-- 		s = { "<cmd>lua require('spectre').toggle()<cr>", "spectre" },
		-- 		w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "current word" },
		-- 	},
		-- }, { prefix = "<leader>" })
	end,
	keys = {
		-- {
		-- 	"<leader>;",
		-- 	"<cmd>lua require('spectre').toggle()<cr>",
		-- 	desc = "spectre",
		-- },
		{
			"<leader>p",
			"<cmd>lua require('spectre').open_visual({select_word=true})<cr>",
			desc = "spectre",
		},
	},
}
