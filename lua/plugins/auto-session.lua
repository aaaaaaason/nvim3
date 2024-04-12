return {
	"rmagatti/auto-session",
	config = function()
		vim.o.sessionoptions = "globals,blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
		require("auto-session").setup({
			log_level = "error",
			auto_session_suppress_dirs = { "~/Projects", "~/", "~/Downloads", "/" },
			-- auto_session_enabled = false,
			-- auto_session_create_enabled = false,
			-- auto_restore_enabled = true,

			-- ⚠️ This will only work if Telescope.nvim is installed
			-- The following are already the default values, no need to provide them if these are already the settings you want.
			session_lens = {
				-- If load_on_setup is set to false, one needs to eventually call `require("auto-session").setup_session_lens()` if they want to use session-lens.
				buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
				load_on_setup = true,
				theme_conf = { border = true },
				previewer = false,
			},
			pre_save_cmds = {
				function()
					if vim.fn.exists(":Neotree") > 0 then
						vim.cmd("Neotree close")
					end
				end,
			},
			-- post_restore_cmds = {
			--     function()
			--         if vim.fn.exists(":Neotree") > 0 then
			--             vim.cmd("Neotree toggle reveal")
			--         end
			--     end
			-- },
		})

		local wk = require("which-key")
		wk.register({
			a = {
				name = "+auto-session", -- optional group name
				s = { "<cmd>SessionSave<cr>", "save session" },
				r = { "<cmd>SessionRestore<cr>", "restore session" },
				f = {
					function()
						require("auto-session.session-lens").search_session()
					end,
					"find session",
				},
			},
		}, { prefix = "<leader>" })
	end,
	keys = {
		{
			"<leader>s",
			function()
				require("auto-session.session-lens").search_session()
			end,
			desc = "sessions",
		},
	},
}
