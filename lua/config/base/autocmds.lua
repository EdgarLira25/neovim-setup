vim.cmd([[ autocmd FocusGained,BufEnter * checktime ]])

local autosave_enabled = true
local timer = vim.loop.new_timer()

vim.api.nvim_create_autocmd({ "TextChanged", "InsertLeave" }, {
    pattern = "*",
    callback = function()
        if not autosave_enabled then return end
        timer:stop()
        timer:start(50, 0, vim.schedule_wrap(function()
            local buf = vim.api.nvim_get_current_buf()
            if vim.bo[buf].modifiable and vim.bo[buf].modified then
                -- vim.notify("Save", vim.log.levels.INFO) -- para logs
                vim.cmd("silent! write")
            end
        end))
    end,
})

vim.api.nvim_create_user_command("ASToggle", function()
    autosave_enabled = not autosave_enabled
    print("AutoSave " .. (autosave_enabled and "enabled" or "disabled"))
end, {})
