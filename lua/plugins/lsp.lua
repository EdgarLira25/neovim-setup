return {
    'neovim/nvim-lspconfig',
    dependencies = { { 'hrsh7th/cmp-nvim-lsp' }, { 'hrsh7th/nvim-cmp' } },
    config = function()
        local cmp = require 'cmp'
        local lsp = require('lspconfig')

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
        lsp.pyright.setup({
            filetypes = { 'python' },
            settings = { python = { analysis = { autoImportCompletions = false }, typeCheckingMode = "strict" } }
        })
        lsp.tsserver.setup({
            filetypes = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' },
            cmd = { "typescript-language-server", "--stdio" }
        })
        lsp.clangd.setup({
            filetypes = { 'c', 'cpp', 'cxx', 'cc' }
        })
        lsp.lua_ls.setup({
        })
        lsp.gopls.setup({
            filetypes = { "go", "gomod", "gowork", "gotmpl" },
            cmd = { "gopls" },
        })
        lsp.golangci_lint_ls.setup {
            cmd = { "golangci-lint" }
        }
    end
}
