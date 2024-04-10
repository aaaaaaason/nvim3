return {
	"tknightz/telescope-termfinder.nvim",
	enabled = false,
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"akinsho/toggleterm.nvim",
	},
	config = function()
		require("telescope").load_extension("termfinder")
	end,
}
