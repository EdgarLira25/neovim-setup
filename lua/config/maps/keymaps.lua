function _G.smart_backspace()
    local line = vim.api.nvim_get_current_line()
    local col = vim.api.nvim_win_get_cursor(0)[2]
    local prev_char = vim.fn.strcharpart(line, col - 1, 1)
    local next_char = vim.fn.strcharpart(line, col, 1)
    local pairs = {
        ['('] = ')',
        ['{'] = '}',
        ['['] = ']',
        ['"'] = '"',
        ["'"] = "'",
        ["<"] = ">"
    }
    if pairs[prev_char] == next_char then
        return '<Right><BS><BS>'
    end
    return '<BS>'
end

function _G.autopairs(open_char, close_char)
    local next_char = vim.fn.strcharpart(vim.api.nvim_get_current_line(), vim.api.nvim_win_get_cursor(0)[2], 1)
    if vim.fn.mode() == "i" and vim.tbl_contains({ "", " ", "]", ")", "}", '"', "'" }, next_char) then
        return open_char .. close_char .. "<Left>"
    end
    return open_char
end

local set = vim.keymap.set
-- Integrated Terminal
set({ 'n', 't' }, '<C-b>', '<cmd>ToggleTerm<CR>')

-- Indentation
set("v", "<Tab>", ">gv")
set("v", "<S-Tab>", "<gv")

-- easy life
set('v', 'p', '"_dP')
set({ 'i', 'v' }, '<C-c>', '<Esc>')
set({ 'n', 'v' }, 'd', '"_d')
set('i', '<C-d>', '<C-o>"_dw')
set('i', '<C-S-l>', "<delete>")
set('i', '<C-v>', '<Esc>v')

-- Add braces
set('v', '{', 'c{}<Esc>hp')
set('v', '(', 'c()<Esc>hp')
set('v', '[', 'c[]<Esc>hp')
set('v', '"', 'c""<Esc>hp')
set('v', "'", "c''<Esc>hp")
set('v', '`', 'c``<Esc>hp')
set('v', '<', 'c<><Esc>hp')

-- deslocate lines like Vscode
set({ 'n', 'i' }, '<A-j>', '<CMD>m .1<CR>')
set({ 'n', 'i' }, '<A-k>', '<CMD>m .-2<CR>')
set("v", "<A-j>", ":m '>1<CR>gv=gv")
set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- movement keymaps
set({ 'n', 'v' }, 'H', '0')
set({ 'n', 'v' }, 'L', '$')
set({ 'n', 'v' }, '<C-k>', '5k')
set({ 'n', 'v' }, '<C-j>', '5j')
set({ 'n', 'v' }, '<C-h>', 'b')
set({ 'n', 'v' }, '<C-l>', 'e')
set('i', '<C-k>', '<Up>')
set('i', '<C-j>', '<Down>')
set('i', '<C-h>', '<Left>')
set('i', '<C-l>', '<Right>')

local opts = { expr = true, noremap = true }
set('i', '(', 'v:lua.autopairs("(", ")")', opts)
set('i', '[', 'v:lua.autopairs("[", "]")', opts)
set('i', '{', 'v:lua.autopairs("{", "}")', opts)
set('i', '<', 'v:lua.autopairs("<", ">")', opts)
set('i', "'", 'v:lua.autopairs("\'", "\'")', opts)
set('i', '"', 'v:lua.autopairs(\'"\', \'"\' )', opts)
set('i', '<BS>', 'v:lua.smart_backspace()', opts)

-- del unused key map
vim.keymap.del('n', 'gc')
vim.keymap.del('n', 'gcc')
vim.keymap.del('x', "[%")
