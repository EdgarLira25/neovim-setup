return {
    "RRethy/vim-illuminate",
    config = function() -- default configuration
        local hl = vim.api.nvim_set_hl

        hl(0, "IlluminatedWord", { underline = true })
        hl(0, "IlluminatedCurWord", { underline = true })
        hl(0, "IlluminatedWordText", { underline = true })
        hl(0, "IlluminatedWordRead", { underline = true })
        hl(0, "IlluminatedWordWrite", { underline = true })

        require('illuminate').configure({ delay = 1000, modes_allowlist = { "n", "v"}, filetypes_denylist = { "NvimTree" } })
    end
}
