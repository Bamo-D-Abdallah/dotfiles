return {
	{
		'ThePrimeagen/harpoon',
		opts = function()
			require("harpoon").setup({})
		end,

		keys = {

			{
				'<leader>a',
				function() require("harpoon.mark").add_file() end,
				desc = 'Add current file to harpoon'

			},
			{ 
				'<leader>h',
				function() require("harpoon.ui").toggle_quick_menu() end,
				desc = 'Toggle harpoon menu'
			},
			{
				'<leader>1',
				function() require("harpoon.ui").nav_file(1) end,
				desc = 'Go to first file in harpoon'
			},
			{
				'<leader>2',
				function() require("harpoon.ui").nav_file(2) end,
				desc = 'Go to second file in harpoon'
			},
			{
				'<leader>3',
				function() require("harpoon.ui").nav_file(3) end,
				desc = 'Go to third file in harpoon'
			},
			{
				'<leader>4',
				function() require("harpoon.ui").nav_file(4) end,
				desc = 'Go to fourth file in harpoon'
			},
			{
				'<leader>p',
				function() require("harpoon.ui").nav_prev() end,
				desc = 'Go to previous file in harpoon'
			},
			{
				'<leader>n',
				function() require("harpoon.ui").nav_next() end,
				desc = 'Go to next file in harpoon'
			},

		},
		
        },
	{'nvim-lua/plenary.nvim'},
}
