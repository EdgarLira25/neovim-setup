return {
    "mg979/vim-visual-multi",
    branch = 'master',
    init = function()
        vim.g.VM_maps = {
            ["Add Cursor Down"] = "<C-A-j>",
            ["Add Cursor Up"] = "<C-A-K>",
            ['Find Under'] = '<C-d>',
            ['Find Subword Under'] = '<C-d>',
            ['Select l'] = '<C-l>',
            ['Select h'] = '<C-h>',
            ['Select j'] = '<C-j>',
            ['Select k'] = '<C-k>'
        }
    end
}