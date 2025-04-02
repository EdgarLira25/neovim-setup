return {
    "mfussenegger/nvim-dap-python",
    dependencies = { "mfussenegger/nvim-dap", 'theHamsta/nvim-dap-virtual-text' },
    config = function()
       local dap = require("dap")
       require("dap-python").setup("~/venv/bin/python")
       require("nvim-dap-virtual-text").setup{commented = true}
       dap.defaults.fallback.terminal_win_cmd = "botright new | resize 10"
    end
}
