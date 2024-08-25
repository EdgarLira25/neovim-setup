local wk = require('which-key')

local function opts_descr(desc, ignore)
    return {
        noremap = true,
        silent = true,
        desc = ignore and "which_key_ignore" or desc
    }
end

local map = vim.api.nvim_set_keymap

wk.add { { "<leader>c", group = "Comments", icon = '#' } }
map('n', '<leader>i', "<CMD>lua require('nvim-tree.api').tree.change_root_to_node()<CR>",
    opts_descr("Change Root", true))
map('n', '<leader>ç', ':qa<CR>', opts_descr("EXIT"))
map('n', '<leader>z', ':noh<CR>', opts_descr("Hightlight off", true))
map('n', '<leader>q', ':q<CR>', opts_descr("Close Windows", true))
map("n", "<leader>s", ":ASToggle<CR>", opts_descr("On/Off Auto Save", true))
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts_descr("Toggle Tree", true))

wk.add { { "<leader>g", group = "GIT" } }
map('n', '<leader>gn', "<CMD>lua require('gitsigns').next_hunk()<CR>", opts_descr("Next hunk"))
map('n', '<leader>gp', "<CMD>lua require('gitsigns').prev_hunk()<CR>", opts_descr("Previous hunk"))
map('n', '<leader>gs', "<CMD>lua require('gitsigns').stage_hunk()<CR>", opts_descr("Stage hunk"))
map('n', '<leader>gu', "<CMD>lua require('gitsigns').undo_stage_hunk()<CR>", opts_descr("Undo stage hunk"))
map('n', '<leader>gr', "<CMD>lua require('gitsigns').reset_hunk()<CR>", opts_descr("Reset hunk"))
map('n', '<leader>gg', "<CMD>lua require('gitsigns').preview_hunk()<CR>", opts_descr("Preview hunk"))
map('n', '<leader>gD', "<CMD>lua require('gitsigns').diffthis()<CR>", opts_descr("Diff"))
map('n', '<leader>gd', "<CMD>lua require('gitsigns').toggle_deleted()<CR>", opts_descr("Toggle deleted"))

wk.add { { "<leader>t", group = "Telescope" } }
map('n', '<leader>tp', ':Telescope find_files<CR>', opts_descr("Find files"))
map('n', '<leader>tl', ':Telescope live_grep<CR>', opts_descr("Live grep"))
map('n', '<leader>tb', ':Telescope buffers<CR>', opts_descr("List buffers"))
map('n', '<leader>tg', ':Telescope git_status<CR>', opts_descr("List Git Status"))
map('v', '<leader>tw', 'y:Telescope live_grep default_text=<C-r>"<CR>', opts_descr("Grep selection"))

wk.add { { "<leader>f", group = "LSP", icon = '+' } }
map('n', '<leader>fd', '<CMD>lua vim.lsp.buf.declaration()<CR>', opts_descr("Go to declaration"))
map('n', '<leader>fg', '<CMD>lua vim.lsp.buf.hover()<CR>', opts_descr("Show hover info"))
map('n', '<leader>fi', '<CMD>lua vim.lsp.buf.implementation()<CR>', opts_descr("Go to implementation"))
map('n', '<leader>fh', '<CMD>lua vim.lsp.buf.signature_help()<CR>', opts_descr("Show signature help"))
map('n', '<leader>fD', '<CMD>lua vim.lsp.buf.type_definition()<CR>', opts_descr("Go to type definition"))
map('n', '<leader>fr', '<CMD>lua vim.lsp.buf.references()<CR>', opts_descr("List references"))
map('n', '<leader>fb', '<CMD>lua vim.diagnostic.goto_prev()<CR>', opts_descr("Go to previous diagnostic"))
map('n', '<leader>fn', '<CMD>lua vim.diagnostic.goto_next()<CR>', opts_descr("Go to next diagnostic"))
map('n', '<leader>ff', '<CMD>lua vim.diagnostic.open_float()<CR>', opts_descr("Show diagnostics in float"))
map('n', '<leader>fl', '<CMD>lua vim.lsp.buf.format()<CR>', opts_descr("Format code"))
map('n', '<leader>fa', '<CMD>lua vim.lsp.buf.code_action()<CR>', opts_descr("Import"))

wk.add { { "<leader>b", group = "Buffer" } }
map('n', '<Tab>', ':bnext<CR>', opts_descr("Go to next buffer", true))
map('n', '<S-Tab>', ':bprevious<CR>', opts_descr("Go to previous buffer", true))
map('n', '<leader>bc', ':bdelete<CR>', opts_descr("Close current buffer"))
map('n', '<leader>bd', ':bufdo bd<CR>', opts_descr("Clear All Buffers"))
map('n', '<leader><Tab>', ':bdelete<CR>:bnext<CR>', opts_descr("Close current buffer", true))
