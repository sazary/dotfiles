local open_selected_with_trouble = function(...)
  return require("trouble.providers.telescope").open_selected_with_trouble(...)
end

return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        opts = {
          auto_quoting = true,
        },
        config = function()
          require("telescope").load_extension("live_grep_args")
        end,

        keys = {
          {
            "<leader>/",
            ":lua require('telescope').extensions.live_grep_args.live_grep_args({auto_quoting = true})<CR>",
          },
        },
      },
      {
        "gbrlsnchs/telescope-lsp-handlers.nvim",
        config = function()
          require("telescope").load_extension("lsp_handlers")
        end,
      },
    },
    opts = {
      defaults = {
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
      },
    },
    keys = {
      { "<leader>gb", "<cmd>lua require('telescope.builtin').git_bcommits()<CR>" },
      { "<leader>gt", "<cmd>lua require('telescope.builtin').git_stash()<CR>" },

      { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
    },
  },
}
