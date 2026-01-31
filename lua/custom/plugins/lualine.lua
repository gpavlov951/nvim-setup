return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "horizon",
		},
		sections = {
			lualine_c = {
				{ "filename", path = 1 },
			},
			lualine_x = { "encoding", "filetype" },
			lualine_y = {},
		},
	},
}
