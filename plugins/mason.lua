local ensureInstalled = {
  -- Keep in sync with lspconfig.lua; see the mapping at https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
  "ansible-language-server",
  "awk-language-server",
  "bash-language-server",
  "bicep-lsp",
  "css-lsp",
  "cypher-language-server",
  "docker-compose-language-service",
  "dockerfile-language-server",
  "gopls",
  "helm-ls",
  "html-lsp",
  "java-language-server",
  "json-lsp",
  "lua-language-server",
  "powershell-editor-services",
  "pyright",
  "ruff",
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
