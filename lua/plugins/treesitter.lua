return {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    init = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = { 'markdown', 'c', 'cpp', 'bash', 'lua', 'vim', 'python', 'c_sharp', 'git_config', 'gitignore', "vimdoc", "luadoc", "go" , "typescript", "csv"},
            highlight = {
                enable = true
            }
        }
    end
}
