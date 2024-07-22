-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.mapleader = " "
vim.o.number = true

require("config.lazy")
require("bufferline").setup {}

local opts = {
    noremap = true,
    silent = true
}

vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', opts)
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', opts)
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', opts)
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', opts)

vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<leader>w', ':NvimTreeFocus<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>p', ':Telescope find_files<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>P', ':Telescope live_grep<CR>', opts)

vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})

local api = require "nvim-tree.api"
vim.keymap.set('n', '<leader>i', api.tree.change_root_to_node, opts)
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.keymap.set('n', '<C-j>', '<cmd>ToggleTerm<CR>', {
    desc = "OpenTerminal"
})
vim.keymap.set('t', '<C-j>', '<cmd>ToggleTerm<CR>', {
    desc = "CloseTerminal"
})
vim.keymap.set('t', '<C-n>', '<cmd>2:ToggleTerm<CR>', {
    desc = "Add2Terminal"
})
vim.keymap.set('t', '<C-b>', '<cmd>3:ToggleTerm<CR>', {
    desc = "Add3Terminal"
})
vim.keymap.set('t', '<C-g>', '<C-\\><C-N>', {
    desc = "Terminal para Normal Mode"
})

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

vim.api.nvim_set_keymap('i', '{', '{}<Esc>ha', opts)
vim.api.nvim_set_keymap('i', '(', '()<Esc>ha', opts)
vim.api.nvim_set_keymap('i', '[', '[]<Esc>ha', opts)
vim.api.nvim_set_keymap('i', '"', '""<Esc>ha', opts)
vim.api.nvim_set_keymap('i', "'", "''<Esc>ha", opts)
vim.api.nvim_set_keymap('i', '`', '``<Esc>ha', opts)

-- vim.opt.termguicolors = true

