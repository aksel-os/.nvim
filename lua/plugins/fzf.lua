vim.pack.add({
	"https://github.com/ibhagwan/fzf-lua",
})

local fzf = require("fzf-lua")

vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find Files (Fzf)" })
vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Live Grep (Fzf)" })
vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "View Buffers (Fzf)" })

vim.keymap.set("n", "<leader>cs", fzf.blines, { desc = "Buffer Line (Fzf)" })
