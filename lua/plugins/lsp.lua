return {
    'neovim/nvim-lspconfig',
    dependencies = { { 'hrsh7th/cmp-nvim-lsp' }, { 'hrsh7th/nvim-cmp' } },
    config = function()
        local cmp = require 'cmp'
        cmp.setup({
            mapping = {
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                ['<Enter>'] = cmp.mapping.confirm({
                    select = true
                }),
                ['<C-space>'] = cmp.mapping.complete()
            },
            sources = { { name = 'nvim_lsp' } }
        })

        require('lspconfig').pyright.setup({
            filetypes = { 'python' }
        })
        require('lspconfig').tsserver.setup({
            filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
            cmd = { "typescript-language-server", "--stdio" }
        })
        require('lspconfig').clangd.setup({
            filetypes = { 'c', 'cpp', 'cxx', 'cc' }
        })
        require('lspconfig').lua_ls.setup({})
    end
}
