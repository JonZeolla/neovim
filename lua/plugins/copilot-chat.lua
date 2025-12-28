-- CopilotChat with custom prompts and keybindings

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    event = "VeryLazy",
    opts = {
      prompts = {
        Summarize = "Please summarize the following text.",
        Spelling = "Please correct any grammar and spelling errors in the following text.",
        Wording = "Please improve the grammar and wording of the following text.",
        Concise = "Please rewrite the following text to make it more concise.",
      },
      question_header = "## User ",
      answer_header = "## Copilot ",
      error_header = "## Error ",
      separator = " ",
      auto_follow_cursor = false,
    },
    keys = {
      { "<leader>cd", "<cmd>CopilotChatDocs<cr>", desc = "CopilotChat Docs" },
      { "<leader>ce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat Explain" },
      { "<leader>cf", "<cmd>CopilotChatFix<cr>", desc = "CopilotChat Fix" },
      { "<leader>cg", "<cmd>CopilotChatCommitStaged<cr>", desc = "CopilotChat Commit" },
      { "<leader>co", "<cmd>CopilotChatOptimize<cr>", desc = "CopilotChat Optimize" },
      { "<leader>cr", "<cmd>CopilotChatReview<cr>", desc = "CopilotChat Review" },
      { "<leader>ct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat Tests" },
    },
  },
}
