require("config.maps.helpers")

require("which-key").add({ { "<leader>c", group = "Comments", icon = '#' },
    { "<leader>g", group = "GIT" },
    { "<leader>t", group = "Telescope" },
    { "<leader>b", group = "Buffer" },
    { "<leader>f", group = "LSP",      icon = '+' }
})

-- Basic
set({ 'n', 't' }, '<C-b>', '<CMD>ToggleTerm<CR>', opts_descr("Terminal", true))
set('n', '<leader>i', "<CMD>lua require('nvim-tree.api').tree.change_root_to_node()<CR>",
    opts_descr("Change Root", true))
set('n', '<leader>ç', '<CMD>qa<CR>', opts_descr("EXIT"))
set('n', '<leader>z', '<CMD>noh<CR>', opts_descr("Hightlight off", true))
set('n', '<leader>q', '<CMD>q<CR>', opts_descr("Close Windows", true))
set("n", "<leader>s", "<CMD>ASToggle<CR>", opts_descr("On/Off Auto Save", true))
set('n', '<leader>e', '<CMD>NvimTreeToggle<CR>', opts_descr("Toggle Tree", true))

-- Git
set('n', '<leader>gn', "<CMD>lua require('gitsigns').next_hunk()<CR>", opts_descr("Next hunk"))
set('n', '<leader>gp', "<CMD>lua require('gitsigns').prev_hunk()<CR>", opts_descr("Previous hunk"))
set('n', '<leader>gs', "<CMD>lua require('gitsigns').stage_hunk()<CR>", opts_descr("Stage hunk"))
set('n', '<leader>gu', "<CMD>lua require('gitsigns').undo_stage_hunk()<CR>", opts_descr("Undo stage hunk"))
set('n', '<leader>gr', "<CMD>lua require('gitsigns').reset_hunk()<CR>", opts_descr("Reset hunk"))
set('n', '<leader>gg', "<CMD>lua require('gitsigns').preview_hunk()<CR>", opts_descr("Preview hunk"))
set('n', '<leader>gD', "<CMD>lua require('gitsigns').diffthis()<CR>", opts_descr("Diff"))
set('n', '<leader>gd', "<CMD>lua require('gitsigns').toggle_deleted()<CR>", opts_descr("Toggle deleted"))

-- Telescope
set('n', '<leader>tp', '<CMD>Telescope find_files<CR>', opts_descr("Find files"))
set('n', '<leader>tl', '<CMD>Telescope live_grep<CR>', opts_descr("Live grep"))
set('n', '<leader>tb', '<CMD>Telescope buffers<CR>', opts_descr("List buffers"))
set('n', '<leader>tg', '<CMD>Telescope git_status<CR>', opts_descr("List Git Status"))
set('v', '<leader>tw', 'y:Telescope live_grep default_text=<C-r>"<CR>', opts_descr("Grep selection"))

-- LSP
set('n', '<leader>fd', '<CMD>lua vim.lsp.buf.declaration()<CR>', opts_descr("Go to declaration"))
set('n', '<leader>fg', '<CMD>lua vim.lsp.buf.hover()<CR>', opts_descr("Show hover info"))
set('n', '<leader>fi', '<CMD>lua vim.lsp.buf.implementation()<CR>', opts_descr("Go to implementation"))
set('n', '<leader>fh', '<CMD>lua vim.lsp.buf.signature_help()<CR>', opts_descr("Show signature help"))
set('n', '<leader>fD', '<CMD>lua vim.lsp.buf.type_definition()<CR>', opts_descr("Go to type definition"))
set('n', '<leader>fr', '<CMD>lua vim.lsp.buf.references()<CR>', opts_descr("List references"))
set('n', '<leader>fb', '<CMD>lua vim.diagnostic.goto_prev()<CR>', opts_descr("Go to previous diagnostic"))
set('n', '<leader>fn', '<CMD>lua vim.diagnostic.goto_next()<CR>', opts_descr("Go to next diagnostic"))
set('n', '<leader>ff', '<CMD>lua vim.diagnostic.open_float()<CR>', opts_descr("Show diagnostics in float"))
set('n', '<leader>fl', '<CMD>lua vim.lsp.buf.format()<CR>', opts_descr("Format code"))
set('n', '<leader>fa', '<CMD>lua vim.lsp.buf.code_action()<CR>', opts_descr("Import"))
set('n', '<leader>fp', '<CMD>LspRestart<CR>', opts_descr("Lsp Restart"))

-- Buffers
set('n', '<Tab>', '<CMD>bnext<CR>', opts_descr("Go to next buffer", true))
set('n', '<S-Tab>', '<CMD>bprevious<CR>', opts_descr("Go to previous buffer", true))
set('n', '<leader>bc', '<CMD>bdelete<CR>', opts_descr("Close current buffer"))
set('n', '<leader>bd', '<CMD>bufdo bd<CR>', opts_descr("Clear All Buffers"))
set('n', '<leader><Tab>', '<CMD>bdelete<CR>:bnext<CR>', opts_descr("Close current buffer", true))
