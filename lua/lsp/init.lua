vim.opt.signcolumn = "yes"

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP configurations",
	callback = function(event)
		local client = vim.lsp.get_client_by_id(event.data.client_id)

		if client and client.server_capabilities.inlayHintProvider then
			vim.lsp.inlay_hint.enable(true)
		else
			vim.lsp.inlay_hint.enable(false)
		end

		if vim.lsp.inlay_hint then
			vim.keymap.set("n", "<Space>ch", function()
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
			end, { desc = "Toggle inlay hints" })
		end

		local opts = { buffer = event.buf }
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, opts)
	end,
})

local lsps = {
	{ "clangd" }, -- C* languages
	{ "gopls" }, -- Go
	{ "jdtls" }, -- Java
	{ "kotlin_lsp" }, -- Kotlin
	{ "nixd" }, -- Nix
	{ "basedpyright" }, -- Python
	{ "lua_ls" }, -- Lua
	{ "marksman" }, -- Markdown
	{ "tinymist" }, -- Typst
}

for _, lsp in pairs(lsps) do
	vim.lsp.enable(lsp)
end

if not package.loaded["blink.cmp"] then
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	vim.lsp.config("*", { capabilities = capabilities })
else
	local capabilities = require("blink.cmp").get_lsp_capabilities()
	vim.lsp.config("*", { capabilities = capabilities })
end
