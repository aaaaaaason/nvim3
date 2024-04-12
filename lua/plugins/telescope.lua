local find_command = { "rg", "--files", "--iglob", "!.git", "--hidden" }

local find_files = function()
	require("telescope.builtin").find_files({
		find_command = find_command,
		ignore_current_buffer = true,
	})
end

local live_grep = function()
	require("telescope.builtin").live_grep({
		find_command = find_command,
	})
end

local buffers = function()
	require("telescope.builtin").buffers({
		sort_mru = true,
		ignore_current_buffer = true,
	})
end

local oldfiles = function()
	require("telescope.builtin").oldfiles()
end

return {
	"nvim-telescope/telescope.nvim",
	lazy = false,
	tag = "0.1.6",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").load_extension("fzf")
		require("telescope").setup({
			pickers = {
				oldfiles = {
					cwd_only = true,
				},
			},
			-- in telescope's config file.
			extensions = {
				termfinder = {
					mappings = {
						rename_term = "<C-n>",
						delete_term = "<C-x>",
						vertical_term = "<C-v>",
						horizontal_term = "<C-h>",
						float_term = "<C-f>",
					},
				},
			},
		})
		local wk = require("which-key")
		wk.register({
			f = {
				name = "+telescope", -- optional group name
				f = { find_files, "files" },
				g = { live_grep, "grep" },
				b = { buffers, "buffers" },
				o = { oldfiles, "old files" },
				s = { "<cmd>Telescope grep_string<cr>", "current string" },
				h = { "<cmd>Telescope help_tags<cr>", "help tags" },
				C = { "<cmd>Telescope command_history<cr>", "command history" },
				S = { "<cmd>Telescope search_history<cr>", "search history" },
				q = { "<cmd>Telescope quickfix<cr>", "quickfix" },
				Q = { "<cmd>Telescope quickfixhistory<cr>", "quickfix history" },
				r = { "<cmd>Telescope registers<cr>", "registers" },
				m = { "<cmd>Telescope marks<cr>", "marks" },
				k = { "<cmd>Telescope kepmaps<cr>", "keymaps" },
				v = { "<cmd>Telescope vim_options<cr>", "vim options" },
				M = { "<cmd>Telescope man_pages<cr>", "man pages" },
				c = { "<cmd>Telescope commands<cr>", "commands" },
				l = { "<cmd>Telescope loclist<cr>", "location list" },
				L = { "<cmd>Telescope colorscheme<cr>", "colorschemes" },
			},
		}, { prefix = "<leader>" })
	end,
	keys = {
		{ "<leader> ", find_files, desc = "find files" },
		{ "<leader>/", live_grep, desc = "live grep" },
		{ "<leader>.", buffers, desc = "find buffers" },
		{ "<leader>,", oldfiles, desc = "old files" },
	},
}
