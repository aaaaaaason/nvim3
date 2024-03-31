return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local config = require('lualine').get_config()
        -- config.options.theme = 'nord'
        config.options.theme = 'auto'
        config.sections.lualine_y = {
            {
                'tabs',
                tab_max_length = 40,            -- Maximum width of each tab. The content will be shorten dynamically (example: apple/orange -> a/orange)
                max_length = vim.o.columns / 2, -- Maximum width of tabs component.
                -- Note:
                -- It can also be a function that returns
                -- the value of `max_length` dynamically.
                mode = 2, -- 0: Shows tab_nr
                -- 1: Shows tab_name
                -- 2: Shows tab_nr + tab_name

                path = 0, -- 0: just shows the filename
                -- 1: shows the relative path and shorten $HOME to ~
                -- 2: shows the full path
                -- 3: shows the full path and shorten $HOME to ~

                -- Automatically updates active tab color to match color of other components (will be overidden if buffers_color is set)
                use_mode_colors = false,

                -- tabs_color = {
                --     -- Same values as the general color option can be used here.
                --     active = 'lualine_y_normal',     -- Color for active tab.
                --     inactive = 'lualine_y_inactive', -- Color for inactive tab.
                -- },

                show_modified_status = true, -- Shows a symbol next to the tab name if the file has been modified.
                symbols = {
                    modified = '[+]',        -- Text to show when the file is modified.
                },

                fmt = function(name, context)
                    -- Show + if buffer is modified in tab
                    local buflist = vim.fn.tabpagebuflist(context.tabnr)
                    local winnr = vim.fn.tabpagewinnr(context.tabnr)
                    local bufnr = buflist[winnr]
                    local mod = vim.fn.getbufvar(bufnr, '&mod')

                    return name .. (mod == 1 and ' +' or '')
                end

            }
        }
        require('lualine').setup(config)
    end,
}
