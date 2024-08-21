return {
    "RRethy/vim-illuminate",
    config = function() -- default configuration
        require('illuminate').configure({ delay = 1000 })
    end
}
