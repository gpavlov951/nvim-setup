return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	keys = {
		{ "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle file [E]xplorer" },
	},
	init = function()
		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				if vim.fn.argc() == 0 then
					vim.cmd("Neotree show")
				end
			end,
		})
	end,
	opts = {
		enable_git_status = true,
		window = {
			position = "right",
			width = 30,
		},
		default_component_configs = {
			indent = {
				indent_size = 2,
			},
		},
		filesystem = {
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = false,
			},
			window = {
				mappings = {
					["<leader>e"] = "close_window",
				},
			},
		},
	},
}
