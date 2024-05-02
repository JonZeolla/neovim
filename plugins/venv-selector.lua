-- Automate venv cache selection
vim.api.nvim_create_autocmd('VimEnter', {
  desc = 'Auto select virtualenv Nvim open',
  pattern = '*',
  callback = function()
    local venv = vim.fn.findfile('pyproject.toml', vim.fn.getcwd() .. ';')
    if venv ~= '' then
      require('venv-selector').retrieve_from_cache()
    end
  end,
  once = true,
})

local plugin = {
  'linux-cultist/venv-selector.nvim',
  -- Note that this plugin also depends on `fd` on the host; you can install this via brew
  dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
  opts = {},
  event = 'VeryLazy',
  keys = {
    -- Keymap to open VenvSelector to pick a venv.
    { '<leader>pyv', '<cmd>VenvSelect<cr>' },
    -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
    { '<leader>pyc', '<cmd>VenvSelectCached<cr>' },
  },
}

return plugin
