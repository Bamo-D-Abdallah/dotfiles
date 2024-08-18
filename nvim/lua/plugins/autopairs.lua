return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
    opts = function()
        require("nvim-autopairs").setup()
    end

}
