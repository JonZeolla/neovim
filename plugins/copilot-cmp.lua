local plugin = {
  "zbirenbaum/copilot-cmp",
  dependencies = {"zbirenbaum/copilot.lua"},
  config = function()
    -- Due to - vs _
    require("copilot_cmp").setup()
  end
}

return plugin
