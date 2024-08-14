return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("nvim-tree").setup {
            update_focused_file = {
                enable = true,
            },
        }
    end
}
