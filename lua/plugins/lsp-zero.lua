return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    config = function()
        local lsp_zero = require('lsp-zero')
        lsp_zero.extend_lspconfig()

        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({ buffer = bufnr, preserve_mappings = false })
            -- local opts = { buffer = bufnr, remap = false }
            --
            vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', opts)
            -- vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            -- vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            -- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            -- vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
            -- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
            -- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
            -- vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
            -- vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            -- vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
            -- vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

            lsp_zero.buffer_autoformat()
        end)

        --- if you want to know more about lsp-zero and mason.nvim
        --- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
        require('mason').setup({})
        require('mason-lspconfig').setup({
            handlers = {
                lsp_zero.default_setup,
            },
        })

        local cmp = require('cmp')

        cmp.setup({
            preselect = 'item',
            mapping = cmp.mapping.preset.insert({
                ['<CR>'] = cmp.mapping.confirm({ select = false }),
                ['<tab>'] = cmp.mapping.confirm({ select = false }),
            }),
        })
    end
}
