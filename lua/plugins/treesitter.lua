-- NOTE: SHOULD ONLY BE USED IF NATIVE TREESITTER DOES NOT SUPPORT LANGUAGE

vim.pack.add({
	"https://github.com/nvim-treesitter/nvim-treesitter",
})

local ts = require("nvim-treesitter")

ts.install({ "typst" })
