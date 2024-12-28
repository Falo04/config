-- keymaps = {
--     ["g?"] = "actions.show_help",
--     ["<CR>"] = "actions.select",
--     ["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
--     ["<C-h>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
--     ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
--     ["<C-p>"] = "actions.preview",
--     ["<C-c>"] = "actions.close",
--     ["<C-l>"] = "actions.refresh",
--     ["-"] = "actions.parent",
--     ["_"] = "actions.open_cwd",
--     ["`"] = "actions.cd",
--     ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory" },
--     ["gs"] = "actions.change_sort",
--     ["gx"] = "actions.open_external",
--     ["g."] = "actions.toggle_hidden",
--     ["g\\"] = "actions.toggle_trash",
--   },
return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			delete_to_trash = true,
			skip_confirm_for_simple_edits = true,
			view_options = {
				show_hidden = true,
				natural_order = true,
				is_always_hidden = function(name, _)
					return name == ".." or name == ".git"
				end,
			},
			float = {
				padding = 2,
				max_width = 80,
				max_height = 0,
			},
			win_options = {
				wrap = true,
				winblend = 0,
			},
			-- keymaps = {
			-- 	["<C-c>"] = false,
			-- 	["q"] = "actions.close",
			-- },
			use_default_keymaps = true,
		})
	end,
}
