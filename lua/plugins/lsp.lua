-- LSP servers and Mason configuration

return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
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
        "jdtls",
        "json-lsp",
        "lua-language-server",
        "powershell-editor-services",
        "pyright",
        "ruff",
        "tofu-ls",
        "typos-lsp",
        "yaml-language-server",
        "debugpy",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              runtime = { version = "LuaJIT" },
              diagnostics = { globals = { "vim" } },
              workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            },
          },
        },
        terraformls = { enabled = false },
        tofu_ls = {
          on_attach = function(client)
            client.server_capabilities.semanticTokensProvider = nil
          end,
        },
        yamlls = {
          settings = {
            yaml = {
              format = { printWidth = 160 },
            },
          },
        },
      },
    },
  },
}
