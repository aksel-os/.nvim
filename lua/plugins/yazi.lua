vim.pack.add({
  "https://github.com/mikavilpas/yazi.nvim"
})

require("yazi").setup({
  open_for_directories = true
})

vim.keymap.set('n', "<leader>fe", function() require("yazi").yazi() end, {
  desc = "Yazi open file manager"
})
