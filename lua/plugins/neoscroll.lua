return {
    "karb94/neoscroll.nvim",
    -- opts = {
    --     mappings = {},
    --     cursor_scrolls_alone = true,
    --     performance_mode = true,
    --     hide_cursor = false,
    --     stop_eof = false,
    -- },
    config = function()
        local neoscroll = require('neoscroll')
        neoscroll.setup({
            mappings = {},
            cursor_scrolls_alone = true,
            performance_mode = false,
            hide_cursor = false,
            stop_eof = false,
        })
        local keymap = {
            ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 100, easing = 'cubic' }) end,
            ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 100, easing = 'cubic' }) end,
            ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 200, easing = 'quartic' }) end,
            ["<C-f>"] = function() neoscroll.ctrl_f({ duration = 200, easing = 'quartic' }) end,
            ["zt"]    = function() neoscroll.zt({ half_win_duration = 50, easing = 'quadratic' }) end,
            ["zz"]    = function() neoscroll.zz({ half_win_duration = 50, easing = 'quadratic' }) end,
            ["zb"]    = function() neoscroll.zb({ half_win_duration = 50, easing = 'quadratic' }) end,
        }
        local modes = { 'n', 'v', 'x' }
        for key, func in pairs(keymap) do
            vim.keymap.set(modes, key, func)
        end
    end

}
