return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    enabled = true,
    keys = {
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
    },
}
