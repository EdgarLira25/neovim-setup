vim.g.mapleader = " "
vim.o.number = true
vim.o.background = "dark"
vim.o.autoread = true
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
vim.o.whichwrap = '<,>,[,],h,l'

vim.cmd([[
  autocmd FocusGained,BufEnter * checktime
]])

vim.opt.termguicolors = true
vim.api.nvim_set_option("clipboard", "unnamed")
vim.keymap.set({'n', 'v'}, 'y', '"+y')
vim.keymap.set({'n', 'v'}, 'p', '"+p')

require("config.lazy")
require('nvim-web-devicons').setup()
require('mini.icons').setup()

wk = require('which-key')

wk.add({{
    "<leader>f",
    group = "LSP", icon =  '+'
}, {
    "<leader>g",
    group = "GIT"
}, {
    "<leader>t",
    group = "Telescope"
}, {
    "<leader>b",
    group = "Buffer"
}, {
    "<leader>c",
    group = "Comments", icon = '#'
}})
vim.cmd.colorscheme "gruvbox"

local cmp = require('cmp')
cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- Usado se você estiver usando o plugin vsnip
        end
    },
    mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<Enter>'] = cmp.mapping.confirm({
            select = false
        }),
        ['<C-space>'] = cmp.mapping.complete()
    },
    sources = {{
        name = 'nvim_lsp'
    }, {
        name = 'buffer'
    }}
})

local opts = {
    noremap = true,
    silent = true
}

local function opts_descr(desc, ignore)
    ignore = ignore or false
    if ignore == true then
        desc = "which_key_ignore"
    end
    opts["desc"] = desc
    return opts

end

vim.keymap.set('n', '<C-b>', '<cmd>ToggleTerm size=50<CR>')
vim.keymap.set('t', '<C-b>', '<cmd>ToggleTerm<CR>')
vim.keymap.set('t', '<C-A-b>', '<cmd>2:ToggleTerm<CR>')
vim.keymap.set('t', '<C-g>', '<C-\\><C-N>')

vim.keymap.set({'n', 'v', 'i'}, '<S-k>', '3k')
vim.keymap.set({'n', 'v', 'i'}, '<S-j>', '3j')
vim.keymap.set({'n', 'v', 'i'}, '<S-h>', 'b')
vim.keymap.set({'n', 'v', 'i'}, '<S-l>', 'e')

vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>')

vim.keymap.set('i', '{', '{}<Esc>ha')
vim.keymap.set('i', '(', '()<Esc>ha')
vim.keymap.set('i', '[', '[]<Esc>ha')
vim.keymap.set('i', '"', '""<Esc>ha')
vim.keymap.set('i', "'", "''<Esc>ha")
vim.keymap.set('i', '`', '``<Esc>ha')
vim.keymap.set('i', '<', '<><Esc>ha')

vim.keymap.set('v', '{', 'c{}<Esc>hp')
vim.keymap.set('v', '(', 'c()<Esc>hp')
vim.keymap.set('v', '[', 'c[]<Esc>hp')
vim.keymap.set('v', '"', 'c""<Esc>hp')
vim.keymap.set('v', "'", "c''<Esc>hp")
vim.keymap.set('v', '`', 'c``<Esc>hp')
vim.keymap.set('v', '<', 'c<><Esc>hp')

vim.keymap.set({'n', 'i'}, '<A-j>', '<CMD>m .1<CR>')
vim.keymap.set({'n', 'i'}, '<A-k>', '<CMD>m .-2<CR>')
vim.keymap.set("v", "<A-j>", ":m '>1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader>i', require("nvim-tree.api").tree.change_root_to_node, opts_descr("Change Root", true))

vim.api.nvim_set_keymap('n', '<leader>ç', ':qa<CR>', opts_descr("EXIT"))
vim.api.nvim_set_keymap('n', '<leader>z', ':noh<CR>', opts_descr("Hightlight off", true))
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', opts_descr("Close Windows", true))
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', opts_descr("Left window", true))
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', opts_descr("Bottom window", true))
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', opts_descr("Top window", true))
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', opts_descr("Right window", true))
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts_descr("Toggle Tree", true))

vim.api.nvim_set_keymap('n', '<leader>gn', "<cmd>lua require('gitsigns').next_hunk()<CR>", opts_descr("Next hunk"))
vim.api.nvim_set_keymap('n', '<leader>gp', "<cmd>lua require('gitsigns').prev_hunk()<CR>", opts_descr("Previous hunk"))
vim.api.nvim_set_keymap('n', '<leader>gs', "<cmd>lua require('gitsigns').stage_hunk()<CR>", opts_descr("Stage hunk"))
vim.api.nvim_set_keymap('n', '<leader>gu', "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>",
    opts_descr("Undo stage hunk"))
vim.api.nvim_set_keymap('n', '<leader>gr', "<cmd>lua require('gitsigns').reset_hunk()<CR>", opts_descr("Reset hunk"))
vim.api
    .nvim_set_keymap('n', '<leader>gg', "<cmd>lua require('gitsigns').preview_hunk()<CR>", opts_descr("Preview hunk"))
vim.api.nvim_set_keymap('n', '<leader>gD', "<cmd>lua require('gitsigns').diffthis()<CR>", opts_descr("Diff"))
vim.api.nvim_set_keymap('n', '<leader>gd', "<cmd>lua require('gitsigns').toggle_deleted()<CR>",
    opts_descr("Toggle deleted"))

vim.api.nvim_set_keymap('n', '<leader>tp', ':Telescope find_files<CR>', opts_descr("Find files with Telescope"))
vim.api.nvim_set_keymap('n', '<leader>tl', ':Telescope live_grep<CR>', opts_descr("Live grep with Telescope"))
vim.api.nvim_set_keymap('n', '<leader>tb', ':Telescope buffers<CR>', opts_descr("List buffers with Telescope"))
vim.api.nvim_set_keymap('v', '<leader>tb', ':Telescope buffers<CR>', opts_descr("List buffers with Telescope"))

vim.api.nvim_set_keymap('v', '<leader>tw', 'y:Telescope live_grep default_text=<C-r>"<CR>',
    opts_descr("Grep selection with Telescope"))

vim.api.nvim_set_keymap('n', '<leader>fd', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts_descr("Go to declaration"))
vim.api.nvim_set_keymap('n', '<leader>fg', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts_descr("Show hover info"))
vim.api.nvim_set_keymap('n', '<leader>fh', '<Cmd>lua vim.lsp.buf.signature_help()<CR>',
    opts_descr("Show signature help"))
vim.api.nvim_set_keymap('n', '<leader>fD', '<Cmd>lua vim.lsp.buf.type_definition()<CR>',
    opts_descr("Go to type definition"))
vim.api.nvim_set_keymap('n', '<leader>fr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts_descr("List references"))
vim.api.nvim_set_keymap('n', '<leader>fb', '<Cmd>lua vim.diagnostic.goto_prev()<CR>',
    opts_descr("Go to previous diagnostic"))
vim.api.nvim_set_keymap('n', '<leader>fn', '<Cmd>lua vim.diagnostic.goto_next()<CR>',
    opts_descr("Go to next diagnostic"))
vim.api.nvim_set_keymap('n', '<leader>ff', '<Cmd>lua vim.diagnostic.open_float()<CR>',
    opts_descr("Show diagnostics in float"))
vim.api.nvim_set_keymap('n', '<leader>fl', '<Cmd>lua vim.lsp.buf.format()<CR>', opts_descr("Format code"))
vim.api.nvim_set_keymap('n', '<leader>fa', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts_descr("Import"))

vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', opts_descr("Go to next buffer"))
vim.api.nvim_set_keymap('n', '<leader>bb', ':bprevious<CR>', opts_descr("Go to previous buffer"))
vim.api.nvim_set_keymap('n', '<leader>bc', ':bdelete<CR>', opts_descr("Close current buffer"))
vim.api.nvim_set_keymap('n', '<leader><Tab>', ':bdelete<CR>:bnext<CR>', opts_descr("Close current buffer", true))
