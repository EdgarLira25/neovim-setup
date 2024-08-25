return {
    "mg979/vim-visual-multi",
    branch = 'master',
    init = function()
        vim.g.VM_maps = {
            ['Exit'] = '<C-c>',
            ["Add Cursor Down"] = "<C-A-j>",
            ["Add Cursor Up"] = "<C-A-K>",
            ['Find Under'] = '<C-d>',
            ['Find Subword Under'] = '<C-d>',
            ['Select l'] = '<C-A-l>',
            ['Select h'] = '<C-A-h>',
        }
    end
}
