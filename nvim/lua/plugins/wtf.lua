return {
    "piersolenski/wtf.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    opts = {
    },
    keys = {
        {
            "<leader>wtfa",
            mode = { "n", "x" },
            function()
                require("wtf").ai()
            end,
            desc = "Debug diagnostic with AI",
        },
        {
            mode = { "n" },
            "<leader>wtfs",
            function()
                require("wtf").search()
            end,
            desc = "Search diagnostic with Google",
        },
    },
}
