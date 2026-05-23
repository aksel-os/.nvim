-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Line length
vim.opt.textwidth = 80

vim.g.have_nerd_font = true
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)
