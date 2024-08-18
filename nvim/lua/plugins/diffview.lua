return {
    {
        'phleet/vim-mercenary'
    },
    {
        'sindrets/diffview.nvim',
        config = function ()
            require('diffview').setup()
        end,
    }
}
