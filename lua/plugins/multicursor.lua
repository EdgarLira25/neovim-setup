return {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    config = function()
        local mc = require("multicursor-nvim")
        mc.setup()
        local set = vim.keymap.set
        set({ "n", "x" }, "<C-A-k>", function() mc.lineAddCursor(-1) end)
        set({ "n", "x" }, "<C-A-j>", function() mc.lineAddCursor(1) end)
        set({ "n", "x" }, "<C-s>", function() mc.matchAddCursor(1) end)
        set({ "n", "x" }, "<C-S-s>", function() mc.matchSkipCursor(1) end)
        set({ "n", "x" }, "<c-q>", mc.toggleCursor)

        mc.addKeymapLayer(function(layerSet)
            layerSet("n", "<C-c>", function()
                    if not mc.cursorsEnabled() then
                        mc.enableCursors()
                    else
                        mc.clearCursors()
                    end
                end,
                {
                    noremap = true,
                    silent = true
                }
            )
        end)
    end
}
