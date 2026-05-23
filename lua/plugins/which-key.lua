vim.pack.add({
	"https://github.com/folke/which-key.nvim",
})

local wk = require("which-key")
local mini = require("mini.icons")

wk.add({
	{ "<leader>f", group = "find", icon = mini.get("default", "directory") },
	{ "<leader>g", group = "git", icon = mini.get("filetype", "git") },
	{ "<leader>c", group = "code", icon = mini.get("lsp", "string") },
	{ "<leader>t", group = "trouble", icon = mini.get("file", "lint.yml") },
	{ "<leader>m", group = "mode", icon = mini.get("lsp", "color") },
	{ "<leader>d", group = "direnv", icon = mini.get("filetype", "mason") },
})
