local plugin = {
  "dense-analysis/ale",
  lazy = false,
  config = function()
    local b = vim.b
    local g = vim.g

    -- This turns off the ALE linters, which are on by default
    -- I only use ALE for the fixers; everything else should be in lspconfig or something else
    b.ale_linters = {}

    g.ale_completion_enabled = 1
    g.ale_fixers = {
      ['*'] = {'remove_trailing_lines', 'trim_whitespace'},
      go = {'gofmt'},
      rust = {'rustfmt'},
      terraform = {'terraform'},
    }
    g.ale_fix_on_save = 1
    g.ale_python_isort_options = '--profile black'
  end
}

return plugin
