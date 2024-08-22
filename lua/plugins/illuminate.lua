return {
    "RRethy/vim-illuminate",
    config = function() -- default configuration
        require('illuminate').configure({ delay = 1000, modes_allowlist = { "n", "v" }, filetypes_denylist = { "NvimTree" } })
    end
}
