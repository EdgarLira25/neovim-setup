return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("ibl").setup({
            enabled = true,
            scope = {
                enabled = true,
                show_start = false,
                show_end = false,
                show_exact_scope = false,
                injected_languages = false,
                highlight = { "NonText" },
                priority = 1024,
                include = {
                    node_type = {
                        ["*"] = {
                            "switch_statement",
                            "match_statement",
                            "case_statement",
                            "case_clause",
                            "match_expression",
                            "function",
                            "if_statement",
                            "return_statement",
                            "for_statement",
                            "while_statement",
                            "switch_statement",
                            "with_statement",
                            "try_statement"
                        },
                    }
                },
            },
        })
    end
}
