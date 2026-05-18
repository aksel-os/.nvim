vim.pack.add({
	"https://github.com/lewis6991/gitsigns.nvim",
})

local gitsigns = require("gitsigns")
gitsigns.setup()

vim.keymap.set("n", "<leader>gb", function()
	gitsigns.toggle_current_line_blame()
end, { desc = "Gitsigns toggle line blame" })

vim.keymap.set("n", "<leader>gB", function()
	gitsigns.blame_line()
end, { desc = "Gitsigns blame line" })

vim.keymap.set("n", "<leader>gd", function()
	gitsigns.toggle_word_diff()
end, { desc = "Gitsigns toggle word diff" })
