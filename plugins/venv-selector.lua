-- Automate venv cache selection
local plugin = {
  'linux-cultist/venv-selector.nvim',
  -- Note that this plugin also uses `fd` on the host; you can install this via brew
  dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
  opts = {},
  event = 'VeryLazy',
  branch = "regexp", -- This is the 2024 rewrite
  keys = {
    -- Keymap to open VenvSelector to pick a venv.
    { '<leader>pyv', '<cmd>VenvSelect<cr>' },
  },
}

return plugin
