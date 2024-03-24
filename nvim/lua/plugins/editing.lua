return {
  { "godlygeek/tabular", event = { "BufReadPost", "BufNewFile" } },

  {
    "smjonas/inc-rename.nvim",
    event = { "BufReadPost", "BufNewFile" },
    config = function(_, opts)
      require("inc_rename").setup(opts)
    end,
  },
  {
    "nvim-pack/nvim-spectre",
    event = "VeryLazy",
    keys = {
      { "<leader>P", "<cmd>lua require('spectre').open()<CR>" },
      --  search in current file
      { "<leader>pp", "viw:lua require('spectre').open_file_search()<CR>" },

      -- search current word
      { "<leader>pw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>" },

      { "<leader>p", "<esc>:lua require('spectre').open_visual()<CR>", mode = "v" },
    },
  },
}
