return {
    "catppuccin/nvim",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            background = {
                dark = "macchiato",
            },
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = true,
                noice = true,
                mason = true,
                which_key = true,
                illuminate = { enabled = true, lsp = true }
            },
        })
        vim.cmd('colorscheme catppuccin-macchiato')
    end
}
