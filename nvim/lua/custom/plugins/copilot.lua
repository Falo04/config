return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	opts = {
		suggestion = {
			auto_trigger = true,
			enabled = true,
			keymap = {
				accept = "<C-j>",
				reject = "<C-k>",
				accept_word = false,
				accept_line = false,
			},
		},
		panel = { enabled = true },
		filetypes = {
			markdown = true,
			help = true,
			lua = true,
			csharp = true,
			typescript = true,
			python = true,
			go = true,
			["."] = false,
		},
	},
}
