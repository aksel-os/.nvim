vim.pack.add({
	"https://github.com/folke/trouble.nvim",
})

local trouble = require("trouble")
vim.keymap.set("n", "<leader>tT", function()
	trouble.toggle("diagnostics")
end, { desc = "Diagnostics (Trouble)" })

vim.keymap.set("n", "<leader>tt", function()
	trouble.open("diagnostics", {
		filter = { buf = vim.api.nvim_get_current_buf() },
	})
end, { desc = "Buffer Diagnostics (Trouble)" })

vim.keymap.set("n", "<leader>tl", function()
	trouble.toggle("lsp", {
		focus = false,
		win = { position = "right" },
	})
end, { desc = "LSP (Trouble)" })

vim.keymap.set("n", "<leader>ts", function()
	trouble.toggle("symbols", {
		focus = false,
	})
end, { desc = "Symbols (Trouble)" })

vim.keymap.set("n", "<leader>tQ", function()
	trouble.toggle("qflist")
end, { desc = "Quickfix List (Trouble)" })
