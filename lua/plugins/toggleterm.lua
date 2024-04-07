return {
	"akinsho/toggleterm.nvim",
	enabled = false,
	version = "*",
	config = function()
		require("toggleterm").setup({
			-- size = 40,
			-- direction = "horizontal",
			direction = "tab",
			-- winbar = {
			-- 	enabled = true,
			-- },
		})
	end,
	-- keys = {
	-- 	{ "<leader>t", ":toggleterm ", desc = "new terminal" },
	-- 	-- { "<M-1>", "<cmd>1ToggleTerm<CR>", mode = { "n", "t" }, desc = "Toggle terminal 1" },
	-- 	-- { "<M-2>", "<cmd>2ToggleTerm<CR>", mode = { "n", "t" }, desc = "Toggle terminal 2" },
	-- 	-- { "<M-3>", "<cmd>3ToggleTerm<CR>", mode = { "n", "t" }, desc = "Toggle terminal 3" },
	-- 	-- { "<M-4>", "<cmd>4ToggleTerm<CR>", mode = { "n", "t" }, desc = "Toggle terminal 4" },
	--
	-- 	-- { "<leader>r1", "<cmd>ToggleTermSendCurrentLine 1<CR>",  mode = "n",          desc = "current line to terminal 1" },
	-- 	-- { "<leader>r2", "<cmd>ToggleTermSendCurrentLine 2<CR>",  mode = "n",          desc = "current line to terminal 2" },
	-- 	-- { "<leader>r3", "<cmd>ToggleTermSendCurrentLine 3<CR>",  mode = "n",          desc = "current line to terminal 3" },
	-- 	-- { "<leader>r4", "<cmd>ToggleTermSendCurrentLine 4<CR>",  mode = "n",          desc = "current line to terminal 4" },
	-- 	--
	-- 	-- { "<leader>r1", "<cmd>ToggleTermSendVisualLines 1<CR>V", mode = "v",          desc = "selected lines to terminal 1" },
	-- 	-- { "<leader>r2", "<cmd>ToggleTermSendVisualLines 2<CR>V", mode = "v",          desc = "selected lines to terminal 2" },
	-- 	-- { "<leader>r3", "<cmd>ToggleTermSendVisualLines 3<CR>V", mode = "v",          desc = "selected lines to terminal 3" },
	-- 	-- { "<leader>r4", "<cmd>ToggleTermSendVisualLines 4<CR>V", mode = "v",          desc = "selected lines to terminal 4" },
	-- },
}
