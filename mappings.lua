local M = {}

M.general = {
  -- Normal mode keybindings
  n = {
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "Git status"},
    ["<leader>dj"] = { "vim.diagnostic.goto_next", "Go to next" },
    ["<leader>dk"] = { "vim.diagnostic.goto_previous", "Go to previous" },
    ["<leader>dl"] = { "<cmd>Telescope diagnostics<CR>", "Diagnostics"}
  }
}

M.dap = {
  plugin = true,
  -- Normal mode keybindings
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  -- Normal mode keybindings
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

return M
