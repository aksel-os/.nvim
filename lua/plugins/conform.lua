vim.pack.add({
	"https://github.com/stevearc/conform.nvim",
})

require("conform").setup({
	formatters_by_ft = {
		markdown = { "rumdl" },
		python = { "ruff_format" },
		lua = { "stylua" },
		nix = { "nixfmt" },
		c = { "astyle" },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})

vim.keymap.set("n", "<leader>cf", function()
	require("conform")
end, { desc = "Conform format code" })
