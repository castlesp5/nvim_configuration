return {
	"folke/tokyonight.nvim",
	config = function()
		require("tokyonight").setup({
			style = "night",
			transparent = true,
			styles = {
				functions = {}
			},
			on_colors = function(colors)
				colors.hint = colors.orange
				colors.error = "#ff0000"
			end
		})
		vim.cmd[[colorscheme tokyonight]]
	end
}
