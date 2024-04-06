return {
	"lewis6991/gitsigns.nvim",
	-- enabled = false,
	config = function()
		require("gitsigns").setup({
			on_attach = function(bufnr)
				local gitsigns = require("gitsigns")

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.silent = true
					opts.noremap = true
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end

				-- Navigation
				map("n", "]c", function()
					if vim.wo.diff then
						vim.cmd.normal({ "]c", bang = true })
					else
						gitsigns.nav_hunk("next")
					end
				end, { desc = "Next hunk" })

				map("n", "[c", function()
					if vim.wo.diff then
						vim.cmd.normal({ "[c", bang = true })
					else
						gitsigns.nav_hunk("prev")
					end
				end, { desc = "Prev hunk" })

				local wk = require("which-key")
				wk.register({
					h = {
						name = "+gitsigns", -- optional group name
						s = { gitsigns.stage_hunk, "stage hunk" },
						r = { gitsigns.reset_hunk, "reset_hunk" },
						S = { gitsigns.stage_buffer, "stage buffer" },
						u = { gitsigns.undo_stage_hunk, "undo staged hunk" },
						R = { gitsigns.reset_buffer, "reset buffer" },
						p = { gitsigns.preview_hunk, "preview hunk" },
						b = {
							function()
								gitsigns.blame_line({ full = true })
							end,
							"blame line",
						},
						B = { gitsigns.toggle_current_line_blame, "toggle current line blame" },
						d = { gitsigns.diffthis, "diff this" },
						D = {
							function()
								gitsigns.diffthis("~")
							end,
							"diffthis('~')",
						},
						t = { gitsigns.toggle_deleted, "toggle deleted" },
					},
				}, { prefix = "<leader>" })

				-- Text object
				map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", { desc = "select hunk" })
			end,
		})
	end,
}
