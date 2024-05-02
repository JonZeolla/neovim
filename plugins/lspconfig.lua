local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- Keep in sync with mason.lua; see the mapping at https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
local servers = {
  "ansiblels",
  "awk_ls",
  "bashls",
  "bicep",
  "cssls",
  "cypher_ls",
  "docker_compose_language_service",
  "dockerls",
  "gopls",
  "helm_ls",
  "html",
  "java_language_server",
  "jsonls",
  "lua_ls",
  "powershell_es",
  "pyright",
  "ruff_lsp",
  "terraformls",
  "typos_lsp",
  "yamlls",
}

-- This is a list of language servers which have custom configurations under language_servers/
local customized = {
  "lua_ls",
  "yamlls",
}

local plugin = {
  "neovim/nvim-lspconfig",
  config = function()
    -- Use the default config
    require "plugins.configs.lspconfig"

    for _, lsp in ipairs(servers) do
      -- Baseline opts
      local opts = { on_attach = on_attach, capabilities = capabilities }

      -- Check if the server has a custom configuration
      if vim.tbl_contains(customized, lsp) then
        -- Construct the standard path to the custom config
        local custom_config_path = "custom.language_servers." .. lsp

        -- Safely try to load the custom config
        local status_ok, custom_opts = pcall(require, custom_config_path)

        if status_ok then
          -- Merge the custom configuration options with the baseline opts
          opts = vim.tbl_deep_extend("force", opts, custom_opts)
        else
          -- This will show up in nvim at the bottom when a file is opened
          print("Failed to load the custom config for " .. lsp)
        end
      end

      -- Run the actual setup with either the baseline or customized opts
      require('lspconfig')[lsp].setup(opts)
    end
  end,
}

return plugin
