return {
    'tpope/vim-fugitive',

    keys = {
		{
			'<leader>gs',
			function() vim.cmd("Git") end,
			desc = 'Opens Git status'
		},
    }
}
