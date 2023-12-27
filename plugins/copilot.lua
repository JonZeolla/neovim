local plugin = {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "InsertEnter",
  opts = {
    -- https://github.com/zbirenbaum/copilot.lua#setup-and-configuration
    suggestion = { enabled = true },
    panel = { enabled = true },
    filetypes = {
      markdown = true,
      help = true,
    },
  },
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = false,
        auto_trigger = true,
      },
      panel = {
        enable = false,
      }
    })
  end
}

return plugin
