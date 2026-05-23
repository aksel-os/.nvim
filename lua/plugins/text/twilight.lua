vim.pack.add({
	"https://github.com/folke/twilight.nvim",
})

local twilight = require("twilight")

twilight.setup({})

vim.keymap.set("n", "<leader>mt", twilight.toggle, { desc = "Toggle Twilight Mode (Twilight)" })
