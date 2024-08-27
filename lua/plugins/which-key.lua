return {
    'folke/which-key.nvim',
    opts = {
        win = {
            no_overlap = true,
            width = 100,
            col = 0.5,
            title = false,
        },
        layout = {
            width = {
                min = 10,
                max = 50,
            },
            spacing = 10
        },
        triggers = { {
            "<leader>",
            mode = { "n", "v" }
        } }
    },
    init = function()
        require("which-key").add({ { "<leader>c", group = "Comments", icon = '#' },
            { "<leader>g", group = "GIT" },
            { "<leader>t", group = "Telescope" },
            { "<leader>b", group = "Buffer" },
            { "<leader>f", group = "LSP",      icon = '+' }
        })
    end
}
