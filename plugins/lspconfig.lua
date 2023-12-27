local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- Keep in sync with mason.lua; see the mapping at https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
local servers = {
  "bashls",
  "lua_ls",
  "pyright",
  "bicep",
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
