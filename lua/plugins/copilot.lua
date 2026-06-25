return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      provider = "github_models",
      providers = {
        github_models = {
          disabled = false,
        },
      },
    },
  },
}
