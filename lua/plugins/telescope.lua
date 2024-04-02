return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').load_extension('fzf')
    end,
    keys = {
        {
            "<leader><leader>",
            function() require("telescope.builtin").find_files({ find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' } }) end,
            desc = "find files",
        },
        {
            "<leader>/",
            function() require("telescope.builtin").live_grep() end,
            desc = "live grep",
        },
        {
            "<leader>b",
            function() require("telescope.builtin").buffers() end,
            desc = "buffers",
        },
        {
            "<leader>h",
            function() require("telescope.builtin").help_tags() end,
            desc = "help tags",
        },
        {
            "<leader>g",
            function() require("telescope.builtin").grep_string() end,
            desc = "grep string",
        },
        {
            "<leader>p",
            function() require("telescope.builtin").oldfiles() end,
            desc = "recent files",
        },
        {
            "<leader>hc",
            function() require("telescope.builtin").command_history() end,
            desc = "command history",
        },
        {
            "<leader>hs",
            function() require("telescope.builtin").search_history() end,
            desc = "search history",
        },
        {
            "<leader>m",
            function() require("telescope.builtin").marks() end,
            desc = "marks",
        },
        {
            "<leader>q",
            function() require("telescope.builtin").quickfix() end,
            desc = "quickfix",
        },
        {
            "<leader>hq",
            function() require("telescope.builtin").quickfixhistory() end,
            desc = "quickfix history",
        },
        {
            "<leader>r",
            function() require("telescope.builtin").registers() end,
            desc = "registers",
        },
        {
            "<leader>k",
            function() require("telescope.builtin").keymaps() end,
            desc = "keymaps",
        },
        {
            "<leader>f",
            function() require("telescope").extensions.file_browser.file_browser() end,
            desc = "file browser",
        },
        {
            "<leader>c",
            function() require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", select_buffer = true }) end,
            desc = "file browser (current buffer)",
        },
        {
            "<leader>s",
            function() require("auto-session.session-lens").search_session() end,
            desc = "session",
        },
    },
}
