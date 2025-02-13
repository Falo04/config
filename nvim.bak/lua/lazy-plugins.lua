require("lazy").setup({
	"tpope/vim-sleuth",
	{ "numToStr/Comment.nvim", opts = {} },

	require("custom/plugins/gitsigns"),
	require("custom/plugins/telescope"),
	require("custom/plugins/lspconfig"),
	require("custom/plugins/conform"),
	require("custom/plugins/cmp"),
	require("custom/plugins/colorscheme"),
	require("custom/plugins/mini"),
	require("custom/plugins/treesitter"),
	--require("custom/plugins/copilot"),
	require("custom/plugins/harpoon"),
	require("custom/plugins/comments"),
	require("custom/plugins/fugitive"),
	require("custom/plugins/oil"),
	require("custom/plugins/grug-far"),
	require("custom/plugins/ts-autotag"),
	require("custom/plugins/crates"),
})

-- vim: ts=2 sts=2 sw=2 et
