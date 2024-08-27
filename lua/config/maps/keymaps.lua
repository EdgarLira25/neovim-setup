local set = vim.keymap.set

-- Integrated Terminal
set({ 'n', 't' }, '<C-b>', '<cmd>ToggleTerm<CR>')

-- Indentation
set("v", "<Tab>", ">gv")
set("v", "<S-Tab>", "<gv")

-- easy life
set('v', 'p', '"_dP')
set('i', '<C-c>', '<Esc>')
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

-- del unused key map
vim.keymap.del('n', 'gc')
vim.keymap.del('n', 'gcc')
vim.keymap.del('x', "[%")
