local M = {}

M.general = {
  -- Normal mode keybindings
  n = {
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "Git status"},
    ["<leader>dj"] = { "vim.diagnostic.goto_next", {buffer=0} },
    ["<leader>dk"] = { "vim.diagnostic.goto_previous", {buffer=0} },
    ["<leader>dl"] = { "<cmd>Telescope diagnostics<CR>", {buffer=0}}
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
