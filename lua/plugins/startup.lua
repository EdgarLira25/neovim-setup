return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', "echasnovski/mini.icons" },
    config = function()
        require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end
}
