return {
    "lukas-reineke/indent-blankline.nvim",
    config = function() -- default configuration
        require("ibl").setup({
            scope = {
                enabled = false,
                show_start = false,
                show_end = false,
                highlight = { "NonText" },
                injected_languages = false
            }
        })
    end
}
