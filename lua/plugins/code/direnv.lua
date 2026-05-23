vim.pack.add({
	-- "https://github.com/direnv/direnv.vim",
	"https://github.com/NotAShelf/direnv.nvim",
})

require("direnv").setup({
	statusline = { enabled = true },
})
