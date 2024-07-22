return {
    'neovim/nvim-lspconfig',
    dependencies = {{'hrsh7th/nvim-cmp'}, {'hrsh7th/cmp-nvim-lsp'}},
    config = function()
        require('lspconfig').pyright.setup({
            filetypes = {"python"},
            on_attach = function(client, bufnr)
                local function buf_set_keymap(...)
                    vim.api.nvim_buf_set_keymap(bufnr, ...)
                end
                local function buf_set_option(...)
                    vim.api.nvim_buf_set_option(bufnr, ...)
                end

                buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
                local opts = {
                    noremap = true,
                    silent = true
                }
                buf_set_keymap('n', '<leader>ld', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
                -- buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
                buf_set_keymap('n', '<leader>lk', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
                -- buf_set_keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
                buf_set_keymap('n', '<leader>lj', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
                buf_set_keymap('n', '<leader>lD', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
                buf_set_keymap('n', '<leader>lr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
                buf_set_keymap('n', '<leader>lp', '<Cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
                buf_set_keymap('n', '<leader>ln', '<Cmd>lua vim.diagnostic.goto_next()<CR>', opts)
                buf_set_keymap('n', '<leader>ll', '<Cmd>lua vim.diagnostic.open_float()<CR>', opts)
                buf_set_keymap('n', '<leader>lf', '<Cmd>lua vim.lsp.buf.format()<CR>', opts)
            end
        })
    end
}
