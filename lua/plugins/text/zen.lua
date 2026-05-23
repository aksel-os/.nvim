vim.pack.add({
	"https://github.com/folke/zen-mode.nvim",
})

local zen = require("zen-mode")

zen.setup({
	kitty = { enabled = true },
})

vim.keymap.set("n", "<leader>mz", zen.toggle, { desc = "Toggle Zen Mode (Zen)" })
