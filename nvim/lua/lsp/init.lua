local ok, _ = pcall(require, "lspconfig")
if not ok then
  return
end

require("lsp.configs")
require("lsp.handlers").setup()
require("lsp.null-ls")
