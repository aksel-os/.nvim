-- Taken from https://xnacly.me/posts/2025/neovim-lsp-changes/

local lsps = {
  { "clangd", {} }, -- C* languages
  { "gopls", {} }, -- Go
  { "jdtls", {} }, -- Java
  { "nil", {} }, -- Nix
  { "ruff", {} }, -- Python
  { "lua_ls", {} }, -- Lua
  { "marksman", {} }, -- Markdown
  { "tinymist", {} }, -- Typst
}

for _, lsp in pairs(lsps) do
  local name, config = lsp[1], lsp[2]

  vim.lsp.enable(name)
  vim.lsp.config(name, config)
end
