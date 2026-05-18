vim.pack.add({
	"https://github.com/Saghen/blink.lib",
	"https://github.com/Saghen/blink.cmp",
})

require("blink.cmp").setup({
	keymap = { preset = "enter" },
	completion = {
		documentation = { auto_show = true },
		ghost_text = { enabled = true },
	},
	fuzzy = { implementation = "prefer_rust_with_warning" },
})
