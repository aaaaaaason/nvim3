return {
	"stevearc/conform.nvim",
	lazy = false,
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				go = { "goimports", "gofumpt" },
				rust = { "rustfmt" },
				protobuf = { "buf" },
				c = { "clang-format" },
				cpp = { "clang-format" },
			},
			-- format_on_save = function(bufnr)
			-- 	-- Disable with a global or buffer-local variable
			-- 	if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
			-- 		return
			-- 	end
			-- 	return { timeout_ms = 500, lsp_fallback = true }
			-- end,
			format_after_save = function(bufnr)
				-- Disable with a global or buffer-local variable
				if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
					return
				end
				return { lsp_fallback = true }
			end,
		})

		vim.api.nvim_create_user_command("Format", function(args)
			local range = nil
			if args.count ~= -1 then
				local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
				range = {
					start = { args.line1, 0 },
					["end"] = { args.line2, end_line:len() },
				}
			end
			require("conform").format({ async = true, lsp_fallback = true, range = range })
		end, { range = true })

		vim.api.nvim_create_user_command("FormatDisable", function(args)
			if args.bang then
				-- FormatDisable! will disable formatting just for this buffer
				vim.b.disable_autoformat = true
			else
				vim.g.disable_autoformat = true
			end
		end, {
			desc = "Disable autoformat-on-save",
			bang = true,
		})
		vim.api.nvim_create_user_command("FormatEnable", function()
			vim.b.disable_autoformat = false
			vim.g.disable_autoformat = false
		end, {
			desc = "Re-enable autoformat-on-save",
		})

		local wk = require("which-key")
		wk.register({
			c = {
				name = "+conform", -- optional group name
				g = {
					function()
						vim.g.disable_autoformat = not vim.g.disable_autoformat
						print("autoformat (global) = ", vim.g.disable_autoformat)
					end,
					"toggle autoformat (global)",
				},
				b = {
					function()
						vim.b.disable_autoformat = not vim.b.disable_autoformat
						print("autoformat (buffer) = ", vim.g.disable_autoformat)
					end,
					"toggle autoformat (buffer)",
				},
				f = { "<cmd>Format<cr>", "format" },
			},
		}, { prefix = "<leader>" })
	end,
}
