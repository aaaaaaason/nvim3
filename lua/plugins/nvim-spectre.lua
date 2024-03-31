return {
    'nvim-pack/nvim-spectre',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        {
            "<leader><S-s>",
            function() require("spectre").toggle() end,
            desc = "find & replace",
        },
    },
}
