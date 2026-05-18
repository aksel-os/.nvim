vim.pack.add({
	"https://github.com/mfussenegger/nvim-lint",
})

local lint = require("lint")
lint.linters_by_ft = {
	markdown = { "rumdl" },
	python = { "ruff" },
	nix = { "statix" },
	c = { "clang-tidy" },
}
