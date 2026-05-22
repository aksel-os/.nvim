vim.pack.add({
	"https://github.com/lewis6991/gitsigns.nvim",
})

local gitsigns = require("gitsigns")
gitsigns.setup()

vim.keymap.set("n", "<leader>gb", function()
	gitsigns.toggle_current_line_blame()
end, { desc = "Toggle Line Blame (Gitsigns)" })

vim.keymap.set("n", "<leader>gB", function()
	gitsigns.blame_line()
end, { desc = "Blame Line (Gitsigns)" })

vim.keymap.set("n", "<leader>gd", function()
	gitsigns.toggle_word_diff()
end, { desc = "Toggle Word Diff (Gitsigns)" })
