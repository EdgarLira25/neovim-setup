return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        {
            'nvim-lua/plenary.nvim',
            "nvim-telescope/telescope-live-grep-args.nvim",
            version = "^1.0.0",
        }
    },
    config = function()
        require("telescope").setup {
            pickers = {
                find_files = {
                    theme = "dropdown",
                    previewer = false
                },
                git_status = {
                    theme = "dropdown",
                    previewer = false
                }
            }
        }
    end
}
