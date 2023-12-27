local plugin = {
  "mfussenegger/nvim-dap",
  opts = {},
  config = function(_, opts)
    require("core.utils").load_mappings("dap")
  end
}

return plugin
