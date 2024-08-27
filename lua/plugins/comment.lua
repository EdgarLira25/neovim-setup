return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup {
            padding = true,
            sticky = true,
            ignore = nil,
            toggler = { line = '<leader>cc', block = '<leader>cb' },
            opleader = { line = '<leader>cc', block = '<leader>cb' },
            extra = { above = '<leader>ccO', below = '<leader>cco', eol = '<leader>ccA' },
            mappings = { basic = true, extra = false },
            pre_hook = nil,
            post_hook = nil,
        }
    end
}
