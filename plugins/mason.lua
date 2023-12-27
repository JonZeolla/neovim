local ensureInstalled = {
  -- Keep in sync with lspconfig.lua; see the mapping at https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
  "bash-language-server",
  "lua-language-server",
  "pyright",
  "bicep-lsp",

  -- Everything else
  "black",
  "debugpy",
  "mypy",
  "ruff",
}

local plugin = {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = ensureInstalled
  }
}

return plugin
