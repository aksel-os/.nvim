vim.pack.add({
  "https://github.com/ibhagwan/fzf-lua"
})

local fzf = require("fzf-lua")

vim.keymap.set('n', "<leader>ff", fzf.files, { desc = "Fzf find files" })
vim.keymap.set('n', "<leader>fg", fzf.live_grep, { desc = "Fzf live grep" })
