-- Formatters (replaces ALE)

return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["*"] = { "trim_whitespace", "trim_newlines" },
        go = { "gofmt" },
        rust = { "rustfmt" },
        terraform = { "terraform_fmt" },
      },
    },
  },
}
