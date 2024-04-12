return {
	"nanozuki/tabby.nvim",
	event = "VimEnter",
	enabled = false,
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("tabby.tabline").use_preset("tab_only", {
			theme = {
				fill = "TabLineFill", -- tabline background
				head = "TabLine", -- head element highlight
				current_tab = "TabLineSel", -- current tab label highlight
				tab = "TabLine", -- other tab label highlight
				win = "TabLine", -- window highlight
				tail = "TabLine", -- tail element highlight
			},
			nerdfont = true, -- whether use nerdfont
			lualine_theme = nil, -- lualine theme name
			tab_name = {
				name_fallback = function(tabid)
					return tabid
				end,
			},
			buf_name = {
				mode = "relative", --"'unique'|'relative'|'tail'|'shorten'",
			},
		})

		local wk = require("which-key")
		wk.register({
			t = {
				name = "+tabby", -- optional group name
				-- r = {
				-- 	"<cmd>TabRename",
				-- 	"rename tab",
				-- },
				p = {
					"<cmd>Tabby pick_window<cr>",
					"pick window",
				},
				a = { "<cmd>tabnew<cr>", "new tab" },
				c = { "<cmd>tabclose<cr>", "close tab" },
				-- n = { "<cmd>tabn<cr>", "next tab" },
				-- p = { "<cmd>tabp<cr>", "prev tab" },
				-- t = { "<cmd>ToggleTerm<cr>", "new terminal" },
			},
		}, { prefix = "<leader>" })
	end,
	keys = {
		{
			"<leader>t",
			"<cmd>Tabby pick_window<cr>",
			desc = "tab window",
		},
		{
			"<leader>tr",
			":Tabby rename_tab ",
			desc = "rename tab",
		},
	},
}
