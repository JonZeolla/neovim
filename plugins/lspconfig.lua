local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- Keep in sync with mason.lua; see the mapping at https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
local servers = {
  "bashls",
  "lua_ls",
  "pyright",
  "bicep",
  "cypher_ls",
  "cssls",
  "awk_ls",
  "docker_compose_language_service",
  "dockerls",
  "helm_ls",
  "html",
  "java_language_server",
  "jsonls",
  "powershell_es",
  "ruff_lsp",
  "terraformls",
  "typos_lsp",
  "yamlls",
}

local plugin = {
  "neovim/nvim-lspconfig",
  config = function()
    -- Uses the default config
    require "plugins.configs.lspconfig"

    -- Updates it with the custom config
    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
      }
    end
  end,
}

return plugin
