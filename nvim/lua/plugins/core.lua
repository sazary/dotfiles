return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,

    config = function()
      require("gruvbox").setup()
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
