local cmp = require("cmp")

local plugin = {
  "hrsh7th/nvim-cmp",
  dependencies = {
    {
      "zbirenbaum/copilot-cmp",
    },
  },
  opts = {
    sources = {
      { name = "copilot",  group_index = 2 },
      { name = "nvim_lsp", group_index = 2 },
      { name = "luasnip",  group_index = 2 },
      { name = "buffer",   group_index = 2 },
      { name = "nvim_lua", group_index = 2 },
      { name = "path",     group_index = 2 },
    },
    mapping = {
      -- This updates enter (carriage return) so we can hit enter at the end of lines when there are suggestions without accepting them
      ["<CR>"] = cmp.mapping({
        i = function(fallback)
          if cmp.visible() and cmp.get_active_entry() then
            cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
          else
            fallback()
          end
        end,
        s = cmp.mapping.confirm({ select = true }),
        c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
      }),
    },
  },
}

return plugin
