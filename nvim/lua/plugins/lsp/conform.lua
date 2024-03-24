return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["*"] = { "trim_whitespace" },
        -- ["python"] = { "ruff_fix", "ruff_format", "autopep8", "yapf", "isort" },
        ["python"] = { "ruff_fix", "ruff_format" },
        ["json"] = { "prettier" },
      },
    },
  },
}
