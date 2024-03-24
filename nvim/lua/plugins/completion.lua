local cmp = require("cmp")

return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "L3MON4D3/LuaSnip",
      "dmitmel/cmp-cmdline-history",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-nvim-lsp-signature-help",
    },

    opts = {
      cmdline = {
        {
          { "/", "?" },
          {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
              { name = "buffer" },

              { name = "cmdline_history" },
            },
          },
        },
      },
    },
  },

  {
    "petertriho/cmp-git",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("cmp_git").setup()
      require("cmp").setup.filetype("gitcommit", {
        sources = require("cmp").config.sources({
          { name = "cmp_git" },
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },

  {
    "zbirenbaum/copilot.lua",
    opts = {
      filetypes = {
        ["*"] = true,
      },
    },
  },
}
