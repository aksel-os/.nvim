vim.pack.add({
	"https://github.com/catppuccin/nvim",
})

require("catppuccin").setup({
	background = {
		light = "latte",
		dark = "mocha",
	},
})

vim.cmd.colorscheme("catppuccin-nvim")
