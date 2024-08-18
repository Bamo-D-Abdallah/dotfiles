return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
    opts = function ()
        require('telescope').load_extension('projects')
    end,
	keys = {
		{
			'<leader>ff',
			function() require("telescope.builtin").find_files() end,
			desc = 'Telescope finds in all files'
		},

		{
			'<leader>fw',
			function() require("telescope.builtin").live_grep() end,
			desc = 'Telescope finds using grep'
		},

		{
			'<leader>fg',
			function() require("telescope.builtin").git_files() end,
			desc = 'Telescope finds git files, respects .gitignore'
		},

		{
			'<leader>fp',
			function() require'telescope'.extensions.projects.projects{} end,
			desc = 'Telescope uses project extension to find projects'
		},

        {
			'<leader>fx',
			function() require'telescope'.extensions.projects.find_project_files(){} end,
			desc = 'Telescope uses project extension to find projects'
        }
	}

}
