return {
	'arnamak/stay-centered.nvim',
	opts = function()
		require('stay-centered').setup({
			enabled = true
		})
	end,
	keys = {
		{
			'<C-c>',
			function() require('stay-centered').toggle() end,
			desc = 'Toggle stay-cenetered'
		},
	}
}
