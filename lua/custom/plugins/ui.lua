return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		---@diagnostic disable-next-line: missing-fields
		require("tokyonight").setup({
			styles = {
				comments = { italic = false },
			},
			on_highlights = function(hl, _)
				hl.DiffviewDiffAdd = { bg = "#2a4a35" }
				hl.DiffviewDiffDelete = { bg = "#4a2030" }
				hl.DiffviewDiffChange = { bg = "#243354" }
				hl.DiffviewDiffText = { bg = "#1e4d6b" }
			end,
		})
		vim.cmd.colorscheme("tokyonight-night")
	end,
}
