return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local function my_on_attach(bufnr)
            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end
            local api = require("nvim-tree.api")
            api.config.mappings.default_on_attach(bufnr)
            vim.keymap.del('n', '<C-k>', { buffer = bufnr })
            vim.keymap.set('n', 'K', api.node.show_info_popup, opts("Show info nvim-tree"))
        end

        require("nvim-tree").setup({
            on_attach = my_on_attach,
            update_focused_file = {
                enable = true
            },
            view = {
                centralize_selection = false,
                cursorline = true,
                debounce_delay = 15,
                side = "left",
                preserve_window_proportions = true,
                number = false,
                relativenumber = false,
                signcolumn = "yes",
                width = 30,
            },
            diagnostics = {
                enable = true
            },
            renderer = {
                indent_width = 2,
                icons = {
                    diagnostics_placement = "after"
                },
                indent_markers = {
                    enable = true
                }
            }
        })
    end
}
