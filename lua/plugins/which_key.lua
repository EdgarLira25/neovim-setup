return {
    'folke/which-key.nvim',
    opts = {
        win = {
            no_overlap = true,
            width = 80,
            col = 0.5,
            title = false,
        },
        layout = {
            width = {
                min = 10,
                max = 50,
            }, 
            spacing = 5 
        },
        triggers = {{
            "<leader>",
            mode = {"n", "v"}
        }}
    },
}

