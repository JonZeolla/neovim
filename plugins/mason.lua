local ensureInstalled = {
  -- Keep in sync with lspconfig.lua; see the mapping at https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
  "bash-language-server",
  "lua-language-server",
  "pyright",
  "bicep-lsp",
  "cypher-language-server",
  "css-lsp",
  "awk-language-server",
  "docker-compose-language-service",
  "dockerfile-language-server",
  "helm-ls",
  "html-lsp",
  "java-language-server",
  "json-lsp",
  "powershell-editor-services",
  "ruff-lsp",
  "terraform-ls",
  "typos-lsp",
  "yaml-language-server",

  -- Needed for dap-python
  "debugpy",
}

local plugin = {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = ensureInstalled
  }
}

return plugin
