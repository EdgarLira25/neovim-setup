return {
    'neovim/nvim-lspconfig',
    config = function()
        require('lspconfig').pyright.setup({
            filetypes = {'python'}
        })
        require('lspconfig').tsserver.setup({
            filetypes = {'typescript', 'typescriptreact', 'typescript.tsx'},
            cmd = {"typescript-language-server", "--stdio"}
        })
        require('lspconfig').clangd.setup({
            filetypes = {'c', 'cpp', 'cxx', 'cc'}
        })
    end
}
