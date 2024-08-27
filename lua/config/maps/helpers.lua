_G.set = vim.keymap.set
_G.expr = { expr = true, noremap = true }

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

function _G.opts_descr(desc, ignore)
    return {
        noremap = true,
        silent = true,
        desc = ignore and "which_key_ignore" or desc
    }
end

