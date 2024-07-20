-- For more ideas, see the default at https://github.com/CopilotC-Nvim/CopilotChat.nvim/blob/canary/lua/CopilotChat/config.lua
-- And a very detailed config at https://github.com/jellydn/lazy-nvim-ide/blob/main/lua/plugins/extras/copilot-chat-v2.lua

local prompts = {
  -- Text related prompts
  Summarize = "Please summarize the following text.",
  Spelling = "Please correct any grammar and spelling errors in the following text.",
  Wording = "Please improve the grammar and wording of the following text.",
  Concise = "Please rewrite the following text to make it more concise.",
}

local plugin = {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "canary", -- Needed for now to get the pure lua version
  dependencies = {
    { "zbirenbaum/copilot.lua" },
    { "nvim-lua/plenary.nvim" }, -- Should be included in NvChad
  },
  event = "VeryLazy",
  opts = {
    prompts = prompts,
    question_header = "## User ",
    answer_header = "## Copilot ",
    error_header = "## Error ",
    separator = " ",
    auto_follow_cursor = false,
  },
  keys = {
    { '<leader>cd', '<cmd>CopilotChatDocs<cr>' },
    { '<leader>ce', '<cmd>CopilotChatExplain<cr>' },
    { '<leader>cf', '<cmd>CopilotChatFix<cr>' },
    { '<leader>cg', '<cmd>CopilotChatCommitStaged<cr>' },
    { '<leader>co', '<cmd>CopilotChatOptimize<cr>' },
    { '<leader>cr', '<cmd>CopilotChatReview<cr>' },
    { '<leader>ct', '<cmd>CopilotChatTests<cr>' },
  },
}

return plugin
