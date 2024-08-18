return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	no_italic = true,
	opts = function()
		require("catppuccin").setup({
			flavour = 'mocha',
			no_italic = true,
			term_colors = true,
			transparent_background = true,
			vim.cmd('colorscheme catppuccin')
		})
	end,
}
