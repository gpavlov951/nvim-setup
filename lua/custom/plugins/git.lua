return {
	{
		"sindrets/diffview.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFileHistory" },
		keys = {
			{ "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "[G]it [D]iff (working tree)" },
			{ "<leader>gD", "<cmd>DiffviewOpen HEAD~1<cr>", desc = "[G]it [D]iff (vs prev commit)" },
			{ "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "[G]it file [H]istory" },
			{ "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "[G]it repo [H]istory" },
			{ "<leader>gx", "<cmd>DiffviewClose<cr>", desc = "[G]it diff close" },
		},
		opts = {
			view = {
				default = {
					layout = "diff2_horizontal",
					winbar_info = false,
				},
				file_history = {
					layout = "diff2_horizontal",
					winbar_info = false,
				},
			},
			file_panel = {
				listing_style = "tree",
				win_config = {
					position = "right",
					width = 35,
				},
			},
			hooks = {
				diff_buf_read = function(_)
					vim.opt_local.number = false
					vim.opt_local.relativenumber = false
					vim.opt_local.signcolumn = "no"
				end,
			},
		},
	},
}
